Pod::HooksManager.register('cocoapods-clang-format-hook', :post_install) do |installer_context, user_options|
  require 'fileutils'
	
  Pod::UI.section 'Adding clang-format pre-commit hook' do

    pre_commit_path = '.git/hooks/pre-commit'
    script_path = File.expand_path(File.dirname(__FILE__)) + '/cocoapods-clang-format-hook/check_formatting'
    
    if user_options[:override_existing_hook] or not File.file? pre_commit_path
      FileUtils.cp(script_path, pre_commit_path)
      FileUtils.chmod(0755, pre_commit_path)
    elsif not FileUtils.compare_file(pre_commit_path, script_path)
      Pod::UI.warn "There's a pre-commit hook already installed, so clang-format pre-commit hook was not installed.\nTo fix this you can add the :override_existing_hook flag to your Podfile or update the hook manually."
    end
  end
end