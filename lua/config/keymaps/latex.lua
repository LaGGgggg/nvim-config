return function()

    vim.keymap.set('i', 'set', '\\{ <Esc>mTa \\}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', 'ese', '\\varnothing ', { buffer = true })

    for _, name in ipairs({'sin', 'cos', 'arcsin', 'arccos', 'exp', 'log', 'ln', 'sup', 'inf' }) do
        vim.keymap.set('i', string.sub(name, 1, 4), table.concat({ '\\', name, ' ' }))
    end
    vim.keymap.set('i', 'not', '\\cancel{ <Esc>mTa }<Esc>`Ta')
    vim.keymap.set('i', 'sh', '\\mbox{sh}')
    vim.keymap.set('i', 'ch', '\\mbox{ch}')

    vim.keymap.set('i', 'vma', '\\begin{vmatrix}<CR><Esc>mTa<CR>\\end{vmatrix}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', 'pma', '\\begin{pmatrix}<CR><Esc>mTa<CR>\\end{pmatrix}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', 'cas', '\\begin{cases}<CR><Esc>mTa<CR>\\end{cases}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', 'arr', '\\begin{array}{c}<CR><Esc>mTa<CR>\\end{array}<Esc>`Ta', { buffer = true })

    vim.keymap.set('i', 'ali', '\\begin{align*}<CR>&  <Esc>mTa<CR>\\end{align*}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', '\\<CR>', '  \\\\<CR>&  ', { buffer = true })
    vim.keymap.set('i', '\\<S-CR>', '  \\\\<CR>\\\\<CR>&  ', { buffer = true })

    vim.keymap.set('i', 'vec', '\\overrightarrow{<Esc>mTa}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', 'sqr', '\\sqrt{<Esc>mTa}<Esc>`Ta', { buffer = true })

    vim.keymap.set('i', '__', '_{<Esc>mTa}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', '^^', '^{<Esc>mTa}<Esc>`Ta', { buffer = true })

    vim.keymap.set('i', 'te', '\\text{<Esc>mTa}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', 'tri', '\\triangle ', { buffer = true })

    -- Greek letters
	vim.keymap.set('i', '@a', '\\alpha ', { buffer = true })
	vim.keymap.set('i', '@b', '\\beta ', { buffer = true })
	vim.keymap.set('i', '@g', '\\gamma ', { buffer = true })
	vim.keymap.set('i', '@G', '\\Gamma ', { buffer = true })
	vim.keymap.set('i', '@d', '\\delta ', { buffer = true })
	vim.keymap.set('i', '@D', '\\Delta ', { buffer = true })
	vim.keymap.set('i', '@e', '\\varepsilon ', { buffer = true })
	vim.keymap.set('i', '@z', '\\zeta ', { buffer = true })
	vim.keymap.set('i', '@t', '\\theta ', { buffer = true })
	vim.keymap.set('i', '@T', '\\Theta ', { buffer = true })
	vim.keymap.set('i', '@i', '\\iota ', { buffer = true })
	vim.keymap.set('i', '@k', '\\kappa ', { buffer = true })
	vim.keymap.set('i', '@l', '\\lambda ', { buffer = true })
	vim.keymap.set('i', '@L', '\\Lambda ', { buffer = true })
	vim.keymap.set('i', '@s', '\\sigma ', { buffer = true })
	vim.keymap.set('i', '@S', '\\Sigma ', { buffer = true })
	vim.keymap.set('i', '@u', '\\upsilon ', { buffer = true })
	vim.keymap.set('i', '@U', '\\Upsilon ', { buffer = true })
	vim.keymap.set('i', '@o', '\\omega ', { buffer = true })
	vim.keymap.set('i', '@O', '\\Omega ', { buffer = true })
	vim.keymap.set('i', '@m', '\\omega ', { buffer = true })
	vim.keymap.set('i', '@M', '\\Omega ', { buffer = true })

    vim.keymap.set('i', '@ph', '\\varphi ', { buffer = true })
    vim.keymap.set('i', '@ps', '\\psi ', { buffer = true })

    vim.keymap.set('i', 'pi', '\\pi ', { buffer = true })

    vim.keymap.set('i', '//', '\\frac{<Esc>mTa}{}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', 'inv', '^{-1}', { buffer = true })

    vim.keymap.set('i', 'Inf', '\\infty ', { buffer = true })
    vim.keymap.set('i', 'sum', '\\sum_{<Esc>mTa}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', 'pro', '\\prod_{<Esc>mTa}<Esc>`Ta', { buffer = true })
    vim.keymap.set('i', '+-', '\\pm ', { buffer = true })
    vim.keymap.set('i', '-+', '\\mp ', { buffer = true })
    vim.keymap.set('i', '..', '\\dots ', { buffer = true })
    vim.keymap.set('i', 'v..', '\\vdots ', { buffer = true })
    vim.keymap.set('i', 'xx', '\\times ', { buffer = true })
    vim.keymap.set('i', 'par', '\\parallel ', { buffer = true })
    vim.keymap.set('i', 'per', '\\perp ', { buffer = true })

    vim.keymap.set('i', '==', '\\equiv ', { buffer = true })
    vim.keymap.set('i', '!=', '\\neq ', { buffer = true })
    vim.keymap.set('i', '>=', '\\geq ', { buffer = true })
    vim.keymap.set('i', '<=', '\\leq ', { buffer = true })
    vim.keymap.set('i', 'sim', '\\sim ', { buffer = true })
    vim.keymap.set('i', 'sie', '\\simeq ', { buffer = true })
    vim.keymap.set('i', '=>', '\\implies ', { buffer = true })
    vim.keymap.set('i', '=<', '\\impliedby ', { buffer = true })

    vim.keymap.set('i', '<>', '\\iff ', { buffer = true })
    vim.keymap.set('i', '->', '\\to ', { buffer = true })
    vim.keymap.set('i', '<-', '\\leftarrow ', { buffer = true })
    vim.keymap.set('i', '-d', '\\downarrow ', { buffer = true })
    vim.keymap.set('i', '-u', '\\uparrow ', { buffer = true })
    vim.keymap.set('i', '-ul', '\\nwarrow ', { buffer = true })
    vim.keymap.set('i', '-ur', '\\nearrow ', { buffer = true })
    vim.keymap.set('i', '-dl', '\\swarrow ', { buffer = true })
    vim.keymap.set('i', '-dr', '\\searrow ', { buffer = true })

    --[===[  to explore:
[
    {trigger: "conj", replacement: "^{*}", options: "mA"},
    {trigger: "Re", replacement: "\\mathrm{Re}", options: "mA"},
	{trigger: "Im", replacement: "\\mathrm{Im}", options: "mA"},
    {trigger: "bf", replacement: "\\mathbf{$0}", options: "mA"},
	{trigger: "rm", replacement: "\\mathrm{$0}$1", options: "mA"},

    // Linear algebra
    // {trigger: /([^\\])(det)/, replacement: "[[0]]\\[[1]]", options: "rmA"},
    {trigger: "trace", replacement: "\\mathrm{Tr}", options: "mA"},

    // More operations
	{trigger: "([a-zA-Z])hat", replacement: "\\widehat{[[0]]}", options: "rmA"},
    {trigger: "([a-zA-Z])bar", replacement: "\\bar{[[0]]}", options: "rmA"},
	// {trigger: "([a-zA-Z])dot", replacement: "\\dot{[[0]]}", options: "rmA", priority: -1},
	{trigger: "([a-zA-Z])ddot", replacement: "\\ddot{[[0]]}", options: "rmA", priority: 1},
	{trigger: "([a-zA-Z])tilde", replacement: "\\widetilde{[[0]]}", options: "rmA"},
	{trigger: "([a-zA-Z])und", replacement: "\\underline{[[0]]}", options: "rmA"},
	{trigger: "([a-zA-Z])vec", replacement: "\\overrightarrow{[[0]]}", options: "rmA"},
    {trigger: "([a-zA-Z]),\\.", replacement: "\\mathbf{[[0]]}", options: "rmA"},
	{trigger: "([a-zA-Z])\\.,", replacement: "\\mathbf{[[0]]}", options: "rmA"},
	{trigger: "\\\\(${GREEK}),\\.", replacement: "\\boldsymbol{\\[[0]]}", options: "rmA"},
	{trigger: "\\\\(${GREEK})\\.,", replacement: "\\boldsymbol{\\[[0]]}", options: "rmA"},

	{trigger: "hat", replacement: "\\widehat{$0}$1", options: "mA"},
    {trigger: "bar", replacement: "\\bar{$0}$1", options: "mA"},
	// {trigger: "dot", replacement: "\\dot{$0}$1", options: "mA", priority: -1},
	{trigger: "ddot", replacement: "\\ddot{$0}$1", options: "mA"},
	{trigger: "cdot", replacement: "\\cdot", options: "mA"},
	{trigger: "tilde", replacement: "\\widetilde{$0}$1", options: "mA"},
	{trigger: "und", replacement: "\\underset{$0}{\\implies}$1", options: "mA"},
	{trigger: "vec", replacement: "\\overrightarrow{$0}$1", options: "mA"},
    {trigger: "over", replacement: "\\overline{$0}$1", options: "mA"},
    {trigger: "bla", replacement: "\\quad \\blacksquare", options: "mA"},
    {trigger: "min", replacement: "\\min", options: "mA"},
    {trigger: "max", replacement: "\\max", options: "mA"},
    {trigger: "sup", replacement: "\\sup", options: "mA"},
    {trigger: "inf", replacement: "\\inf", options: "mA"},
    
    // More auto letter subscript
    {trigger: /([A-Za-z])_(\d\d)/, replacement: "[[0]]_{[[1]]}", options: "rmA"},
	{trigger: /\\hat{([A-Za-z])}(\d)/, replacement: "\\widehat{[[0]]}_{[[1]]}", options: "rmA"},
	{trigger: /\\vec{([A-Za-z])}(\d)/, replacement: "\\vec{[[0]]}_{[[1]]}", options: "rmA"},
	{trigger: /\\mathbf{([A-Za-z])}(\d)/, replacement: "\\mathbf{[[0]]}_{[[1]]}", options: "rmA"},

    {trigger: "xnn", replacement: "x_{n}", options: "mA"},
	{trigger: "xii", replacement: "x_{i}", options: "mA"},
	{trigger: "xjj", replacement: "x_{j}", options: "mA"},
	{trigger: "xp1", replacement: "x_{n+1}", options: "mA"},
	{trigger: "ynn", replacement: "y_{n}", options: "mA"},
	{trigger: "yii", replacement: "y_{i}", options: "mA"},
	{trigger: "yjj", replacement: "y_{j}", options: "mA"},

    // Symbols
    {trigger: "lim", replacement: "\\underset{$0n \\to \\infty}{\\lim}$1", options: "mA"},
    {trigger: "nabl", replacement: "\\nabla", options: "mA"},
	{trigger: "del", replacement: "\\nabla", options: "mA"},

	{trigger: "land", replacement: "\\cap", options: "mA"},
	{trigger: "lor", replacement: "\\cup", options: "mA"},
	{trigger: "inn", replacement: "\\in", options: "mA"},
    {trigger: "\\\\\\", replacement: "\\setminus", options: "mA"},
    {trigger: "sub=", replacement: "\\subseteq", options: "mA"},
    {trigger: "sup=", replacement: "\\supseteq", options: "mA"},
	{trigger: "e\\xi sts", replacement: "\\exists", options: "mA", priority: 1},
    {trigger: "ne\\xi sts", replacement: "\\nexists", options: "mA", priority: 1},

	{trigger: "LL", replacement: "\\mathcal{L}", options: "mA"},
	{trigger: "HH", replacement: "\\mathcal{H}", options: "mA"},
	{trigger: "CC", replacement: "\\mathbb{C}", options: "mA"},
	{trigger: "RR", replacement: "\\mathbb{R}", options: "mA"},
	{trigger: "ZZ", replacement: "\\mathbb{Z}", options: "mA"},
	{trigger: "NN", replacement: "\\mathbb{N}", options: "mA"},

    // Handle spaces and backslashes

    // Snippet variables can be used as shortcuts when writing snippets.
    // For example, ${GREEK} below is shorthand for "alpha|beta|gamma|Gamma|delta|..."
    // You can edit snippet variables under the Advanced snippet settings section.

	{trigger: "([^\\\\])(${GREEK})", replacement: "[[0]]\\[[1]]", options: "rmA", description: "Add backslash before Greek letters"},
	{trigger: "([^\\\\])(${SYMBOL})", replacement: "[[0]]\\[[1]]", options: "rmA", description: "Add backslash before symbols"},

    // Insert space after Greek letters and symbols
	{trigger: "\\\\(${GREEK}|${SYMBOL}|${MORE_SYMBOLS})([A-Za-z])", replacement: "\\[[0]] [[1]]", options: "rmA"},
	{trigger: "\\\\(${GREEK}|${SYMBOL}) sr", replacement: "\\[[0]]^{2}", options: "rmA"},
	{trigger: "\\\\(${GREEK}|${SYMBOL}) cb", replacement: "\\[[0]]^{3}", options: "rmA"},
	{trigger: "\\\\(${GREEK}|${SYMBOL}) rd", replacement: "\\[[0]]^{$0}$1", options: "rmA"},
	{trigger: "\\\\(${GREEK}|${SYMBOL}) hat", replacement: "\\widehat{\\[[0]]}", options: "rmA"},
	{trigger: "\\\\(${GREEK}|${SYMBOL}) dot", replacement: "\\dot{\\[[0]]}", options: "rmA"},
	{trigger: "\\\\(${GREEK}|${SYMBOL}) bar", replacement: "\\bar{\\[[0]]}", options: "rmA"},
	{trigger: "\\\\(${GREEK}|${SYMBOL}) vec", replacement: "\\vec{\\[[0]]}", options: "rmA"},
	{trigger: "\\\\(${GREEK}|${SYMBOL}) tilde", replacement: "\\widetilde{\\[[0]]}", options: "rmA"},
	{trigger: "\\\\(${GREEK}|${SYMBOL}) und", replacement: "\\underline{\\[[0]]}", options: "rmA"},


    // Derivatives and integrals
    {trigger: "par", replacement: "\\frac{ \\partial ${0:y} }{ \\partial ${1:x} } $2", options: "m"},
    {trigger: /pa([A-Za-z])([A-Za-z])/, replacement: "\\frac{ \\partial [[0]] }{ \\partial [[1]] } ", options: "rm"},
    {trigger: "ddt", replacement: "\\frac{d}{dt} ", options: "mA"},

    {trigger: /([^\\])int/, replacement: "[[0]]\\int", options: "mA", priority: -1},
    {trigger: "\\int", replacement: "\\int $0 \\, d${1:x} $2", options: "m"},
    {trigger: "dint", replacement: "\\int_{${0:0}}^{${1:1}} $2 \\, d${3:x} $4", options: "mA"},
    {trigger: "oint", replacement: "\\oint", options: "mA"},
	{trigger: "iint", replacement: "\\iint", options: "mA"},
    {trigger: "iiint", replacement: "\\iiint", options: "mA"},
    {trigger: "oinf", replacement: "\\int_{0}^{\\infty} $0 \\, d${1:x} $2", options: "mA"},
	{trigger: "infi", replacement: "\\int_{-\\infty}^{\\infty} $0 \\, d${1:x} $2", options: "mA"},


    // Trigonometry
    {trigger: /([^\\])(arcsin|sin|arccos|cos|arctan|tan|csc|sec|cot)/, replacement: "[[0]]\\[[1]]", options: "rmA", description: "Add backslash before trig funcs"},

    {trigger: /\\(arcsin|sin|arccos|cos|arctan|tan|csc|sec|cot)([A-Za-gi-z])/,
     replacement: "\\[[0]] [[1]]", options: "rmA",
     description: "Add space after trig funcs. Skips letter h to allow sinh, cosh, etc."},

    {trigger: /\\(sinh|cosh|tanh|coth)([A-Za-z])/,
     replacement: "\\[[0]] [[1]]", options: "rmA",
     description: "Add space after hyperbolic trig funcs"},


    // Visual operations
	{trigger: "U", replacement: "\\underbrace{ ${VISUAL} }_{ $0 }", options: "mA"},
    {trigger: "u", replacement: "\\underline{ ${VISUAL} }", options: "mA"},
	{trigger: "O", replacement: "\\overbrace{ ${VISUAL} }^{ $0 }", options: "mA"},
	{trigger: "B", replacement: "\\underset{ $0 }{ ${VISUAL} }", options: "mA"},
	{trigger: "C", replacement: "\\cancel{ ${VISUAL} }", options: "mA"},
	{trigger: "K", replacement: "\\cancelto{ $0 }{ ${VISUAL} }", options: "mA"},
	{trigger: "S", replacement: "\\sqrt{ ${VISUAL} }", options: "mA"},


    // Physics
	{trigger: "kbt", replacement: "k_{B}T", options: "mA"},
	{trigger: "msun", replacement: "M_{\\odot}", options: "mA"},

    // Quantum mechanics
    {trigger: "dag", replacement: "^{\\dagger}", options: "mA"},
	{trigger: "xor", replacement: "\\oplus ", options: "mA"},
	{trigger: "ox", replacement: "\\otimes ", options: "mA"},
    {trigger: "bra", replacement: "\\bra{$0} $1", options: "mA"},
	{trigger: "ket", replacement: "\\ket{$0} $1", options: "mA"},
	{trigger: "brk", replacement: "\\braket{ $0 | $1 } $2", options: "mA"},
    {trigger: "outer", replacement: "\\ket{${0:\\psi}} \\bra{${0:\\psi}} $1", options: "mA"},

    // Chemistry
	{trigger: "pu", replacement: "\\pu{ $0 }", options: "mA"},
	{trigger: "cee", replacement: "\\ce{ $0 }", options: "mA"},
	{trigger: "he4", replacement: "{}^{4}_{2}He ", options: "mA"},
	{trigger: "he3", replacement: "{}^{3}_{2}He ", options: "mA"},
	{trigger: "iso", replacement: "{}^{${0:4}}_{${1:2}}${2:He}", options: "mA"},


    // Environments
	{trigger: "pmat", replacement: "\\begin{pmatrix}\n$0\n\\end{pmatrix}", options: "MA"},
	{trigger: "bmat", replacement: "\\begin{bmatrix}\n$0\n\\end{bmatrix}", options: "MA"},
	{trigger: "Bmat", replacement: "\\begin{Bmatrix}\n$0\n\\end{Bmatrix}", options: "MA"},
	{trigger: "vmat", replacement: "\\begin{vmatrix}\n$0\n\\end{vmatrix}", options: "MA"},
	{trigger: "Vmat", replacement: "\\begin{Vmatrix}\n$0\n\\end{Vmatrix}", options: "MA"},
	{trigger: "matrix", replacement: "\\begin{matrix}\n$0\n\\end{matrix}", options: "MA"},

	{trigger: "pmat", replacement: "\\begin{pmatrix}$0\\end{pmatrix}", options: "nA"},
	{trigger: "bmat", replacement: "\\begin{bmatrix}$0\\end{bmatrix}", options: "nA"},
	{trigger: "Bmat", replacement: "\\begin{Bmatrix}$0\\end{Bmatrix}", options: "nA"},
	{trigger: "vmat", replacement: "\\begin{vmatrix}$0\\end{vmatrix}", options: "nA"},
	{trigger: "Vmat", replacement: "\\begin{Vmatrix}$0\\end{Vmatrix}", options: "nA"},
	{trigger: "matrix", replacement: "\\begin{matrix}$0\\end{matrix}", options: "nA"},

    
	{trigger: "cases", replacement: "\\begin{cases}\n$0\n\\end{cases}", options: "MA"},
	{trigger: "align", replacement: "\\begin{align*}\n&$0\n\\end{align*}", options: "MA"},
	{trigger: "array", replacement: "\\begin{array}{$0}\n  \n\\end{array}", options: "MA"},

    {trigger: "cases", replacement: "\\begin{cases} $0 \\end{cases}", options: "nA"},
	{trigger: "align", replacement: "\\begin{align*} & $0 \\end{align*}", options: "nA"},
	{trigger: "array", replacement: "\\begin{array}{$0}  \\end{array}", options: "nA"},


    // Brackets
	{trigger: "avg", replacement: "\\langle $0 \\rangle $1", options: "mA"},
	{trigger: "norm", replacement: "\\lvert $0 \\rvert $1", options: "mA", priority: 1},
	{trigger: "Norm", replacement: "\\lVert $0 \\rVert $1", options: "mA", priority: 1},
	{trigger: "ceil", replacement: "\\lceil $0 \\rceil $1", options: "mA"},
	{trigger: "floor", replacement: "\\lfloor $0 \\rfloor $1", options: "mA"},
	{trigger: "mod", replacement: "|$0|$1", options: "mA"},
	{trigger: "(", replacement: "(${VISUAL})", options: "mA"},
	{trigger: "[", replacement: "[${VISUAL}]", options: "mA"},
	{trigger: "{", replacement: "{${VISUAL}}", options: "mA"},
	{trigger: "(", replacement: "($0)$1", options: "mA"},
	{trigger: "{", replacement: "{$0}$1", options: "mA"},
	{trigger: "[", replacement: "[$0]$1", options: "mA"},
	{trigger: "lr(", replacement: "\\left($0\\right) $1", options: "mA"},
	{trigger: "lr{", replacement: "\\left\\{$0\\right\\} $1", options: "mA"},
	{trigger: "lr[", replacement: "\\left[$0\\right] $1", options: "mA"},
	{trigger: "lr|", replacement: "\\left|$0\\right| $1", options: "mA"},
	{trigger: "lra", replacement: "\\left<$0\\right> $1", options: "mA"},
    
    --]===]
end
