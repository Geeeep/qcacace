export const search = {
    backgroundColor: '#FFFFFF',
    display: 'flex',
    flexDirection: 'row',
    justifyContent: 'flex-start',
    alignItems: 'center',
    border: 'solid 1px #F3F3F3',
    borderRadius: '50px',
    padding: '4px 10px',
    width: {
        xs: '100%',
        sm: '350px',
        md: '500px'
    }
}

export const btntxt = { 
    display: {
        xs: 'none',
        md: 'block'
    }, 
    textDecoration: 'none',
    cursor: 'pointer',
    backgroundColor: '#204c6f',
    color: '#ffffff',
    borderRadius: '7px',
    padding: '7px 15px',
    transition: 'all 0.2s ease-in-out',
    '&:hover': { backgroundColor: '#1b405d' }
}

export const btnrecommend = {
    cursor: 'pointer',
    padding: '8px 15px', 
    borderRadius: '26px', 
    color: '#CFCFCF', 
    '&:hover': { 
        backgroundColor: '#C3C3C366', 
        color: '#FFFFFF'
    },
    transition: 'all 0.2s ease-in-out'
}

export const btnadopt = {
    textDecoration: 'none',
    cursor: 'pointer',
    textAlign: 'center',
    backgroundColor: '#204c6f',
    color: '#ffffff',
    borderRadius: '25px',
    padding: '7px 15px',
    transition: 'all 0.2s ease-in-out',
    '&:hover': { backgroundColor: '#1b405d' }
}

export const btnicon = {
    display: {
        xs: 'flex',
        md: 'none'
    }, 
    flexDirection: 'row', 
    justifyContent: 'center', 
    alignItems: 'center',
    backgroundColor: '#204c6f',
    borderRadius: '7px',
    padding: '8px 10px',
    transition: 'all 0.2s ease-in-out',
    '&:hover': { backgroundColor: '#1b405d' }
}

export const btnadopticon = {
    display: {
        xs: 'flex',
        md: 'none'
    }, 
    flexDirection: 'row', 
    justifyContent: 'center', 
    alignItems: 'center',
    backgroundColor: '#204c6f',
    borderRadius: '25px',
    padding: '8px 10px',
    transition: 'all 0.2s ease-in-out',
    '&:hover': { backgroundColor: '#1b405d' }
}

export const petseries = {
    fontWeight: 'bold',
    color: '#a7a7a9',
    fontSize: { 
        xs: '110%',
        sm: '100%'
    },
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis'
}

export const petmale = {
    width: '10%',
    color: '#1ec2df',
    fontSize: { xs: '110%' },
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis'
}

export const petfemale = {
    width: '10%',
    color: '#e76165',
    fontSize: { xs: '110%' },
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis'
}

export const petdesc = {
    width: '90%',
    fontWeight: 'bold',
    color: '#777d9c',
    fontSize: { xs: '125%' },
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis'
}

export const pettag = {
    textAlign: 'center',
    fontWeight: 'bold',
    color: '#FFFFFF',
    backgroundColor: '#c9c9c9',
    padding: '2px 0',
    borderRadius: '50px',
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis'
}

export const petcontainer = {
    width: '100%', 
    padding: '20px', 
    minHeight: '200px',
    backgroundColor: '#FFFFFF', 
    boxShadow: 1, 
    borderRadius: '20px', 
    overflow: 'hidden'
}

export const petimage = {
    display: 'flex', 
    flexDirection: 'row', 
    justifyContent: 'center', 
    alignItems: 'flex-start', 
    width: { 
        xs: '40%', 
        sm: '100%' 
    }, 
    height: { 
        xs: 'auto', 
        sm: '200px' 
    }, 
    borderRadius: '10px', 
    boxShadow: 1, 
    overflow: 'hidden'
}