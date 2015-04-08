Pod::HooksManager.register('cocoapods-clang-format-hook', :post_install) do |installer_context|
  require 'fileutils'
	
  Pod::UI.section 'Adding clang-format pre-commit hook' do

    pre_commit_path = '.git/hooks/pre-commit'
    check_format_path = '.git/hooks/check_formatting'
    script_path = File.expand_path(File.dirname(__FILE__)) + '/cocoapods-clang-format-hook/check_formatting'
    script_content = check_format_path
    if File.file? pre_commit_path
    	previous_content = File.read pre_commit_path
    	if previous_content.include? check_format_path
    		script_content = previous_content
    	else
	    	script_content = check_format_path + "\n" + previous_content
	    end
    end
    File.write(pre_commit_path, script_content)
    FileUtils.cp(script_path, check_format_path)
    FileUtils.chmod(0755, pre_commit_path)
    FileUtils.chmod(0755, check_format_path)

  end
end