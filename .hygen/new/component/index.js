module.exports = {
	prompt: ({ inquirer }) => {
		const questions = [
			{
				type: 'input',
				name: 'component_name',
				message: 'What is the component name?'
			},
			{
				type: 'input',
				name: 'dir',
				message: 'Where is the directory (/src/components/ by default)',
			},
		]
		return inquirer
			.prompt(questions)
			.then(answers => {
				const { category, component_name, dir } = answers
				const absPath = `${dir ? `${dir}/` : `src/components/`}${component_name}`
				return { ...answers, absPath, category }
			})
	}
}