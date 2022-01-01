const ping = async (req, res) => {
    res.apiResponse('pong hello1')
}

module.exports = { ping }
