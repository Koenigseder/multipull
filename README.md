# Multipull

This PowerShell script can be used to update all GitHub repositories in a parent directory at once.

# Installation

1. Open your PowerShell profile with `notepad $PROFILE` (or with your favorite editor)
2. Paste the code into your profile file and save it
3. Restart your PowerShell
4. Now you should be able to use the command `multipull`

# How to use it

## Syntax:

```pwsh
multipull -sourceBranch <remote branch> -destinationBranch <local branch>
```

Default value `sourceBranch`: `master`
Default value `destinationBranch`: `copy/<sourceBranch>`

**Note:** `-sourceBranch` and `-destinationBranch` are not mandatory to type if you keep the structure. So you could also type:

```pwsh
multipull <remote branch> <local branch>
```

<br>

## Examples

```pwsh
mutipull
```

&rarr; Takes the current state of the remote branch `master` and creates a local branch named `copy/master`

---

```pwsh
multipull develop
```

&rarr; Takes the current state of the remote branch `develop` and creates a local branch named `copy/develop`

---

```pwsh
multipull develop new-branch
```

&rarr; Takes the current state of the remote branch `develop` and creates a local branch named `new-branch`

---

```pwsh
multipull -destinationBranch copy-of-master
```

&rarr; Takes the current state of the remote branch `master` (default value) and creates a local branch named `copy-of-master`

---

```pwsh
multipull develop develop
```

&rarr; Takes the current state of the remote branch `develop` and creates a local branch named `develop`
