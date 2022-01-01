const ping = async (req, res) => {
    res.apiResponse('pong hello')
}

module.exports = { ping }
