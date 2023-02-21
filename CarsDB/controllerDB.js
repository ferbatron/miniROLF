const service = require('./serviceDB');

class DbController {
	async createCar(req, res) {
		try {
			const result = await service.createCar(req.body);
			res.status(200).json(result);
			console.log("post ok");
		} catch (e) {
			console.log("post error!");
			res.status(500).json(e);
		}
	}

	async createProduct(req, res) {
		try {
			const result = await service.createProduct(req.body);
			res.status(200).json(result);
			console.log("post ok");
		} catch (e) {
			console.log("post error!");
			res.status(500).json(e);
		}
	}

	async newPicture(req, res) {
		try {
			const result = await service.newPicture(req);
			res.status(200).json(result);
			console.log("post ok");
		} catch (e) {
			console.log("post error!");
			res.status(500).json(e);
		}
	}

	async getCars(req, res) {
		try {
			const cars = await service.getCars();
			res.status(200).json(cars);
			console.log("get ok");
		} catch (e) {
			console.log("get error!");
			res.status(500).json(e);
		}
	}

	async findeCars(req, res) {
		try {
			const result = await service.findeCars(req.query);
			res.status(200).json(result);
			console.log("get ok");
		} catch (e) {
			console.log("get error!");
			res.status(500).json(e);
		}
	}

	async editCar(req, res) {
		try {
			const result = await service.editCar(req.query);
			res.status(200).json(result);
			console.log("put ok");
		} catch (e) {
			console.log("put error!");
			res.status(500).json(e);
		}
	}

	async deleteCar(req, res) {
		try {
			const result = await service.deleteCar(req.query);
			res.status(200).json(result);
			console.log("delete ok");
		} catch (e) {
			console.log("delete error!");
			res.status(500).json(e);
		}
	}

	async findeQuarter(req, res) {
		try {
			const result = await service.findeQuarter(req.query);
			res.status(200).json(result);
			console.log("get ok");
		} catch (e) {
			console.log("get error!");
			res.status(500).json(e);
		}
	}
}

module.exports = new DbController();