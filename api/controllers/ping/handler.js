const ping = async (req, res) => {
    res.apiResponse('pong hello123')
}

module.exports = { ping }
