const ping = async (req, res) => {
    res.apiResponse('pong pong')
}

module.exports = { ping }
