Pod::HooksManager.register('cocoapods-clang-format-hook', :post_install) do |installer_context|
  require 'fileutils'
	
  Pod::UI.section 'Adding clang-format pre-commit hook' do

    pre_commit_path = '.git/hooks/pre-commit'
    script_path = File.expand_path(File.dirname(__FILE__)) + '/cocoapods-clang-format-hook/check_formatting'
    FileUtils.cp(script_path, pre_commit_path)
    FileUtils.chmod(0755, pre_commit_path)

  end
end