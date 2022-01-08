const ping = async (req, res) => {
    res.apiResponse('hello ping')
}

module.exports = { ping }
