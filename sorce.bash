echo "perform git tasks"

commit(){
        echo "enter file names"
        read files
        git add $files
        echo "enter commit"
        read message
        git commit -m "$message"
}
branch_create(){
        echo "give branch name"
        read branch
        git branch $branch
}
branch_delete(){
        echo "enter branch name"
        read branch
        git branch -d $branch
}
revertfunction(){
        echo "enter commit id for revert"
        read id
        git revert "$id"
}

i=$1


select i in commit createbranch deletebranch reverting
do
	case $i in 
		commit)
			commit
			break;;
		
		createbranch)
			branch_create
			break;;

		deletebranch)
			branch_delete
			break;;
			
		reverting)
			revertfunction
			break
			;;

	esac

done

