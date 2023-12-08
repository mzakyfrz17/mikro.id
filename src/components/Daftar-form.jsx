import { Form, InputGroup } from 'react-bootstrap'

const DaftarForm = () => {
    return (
        <div className='daftar-form'>
            <InputGroup className="mb-2">
                <Form.Control
                    placeholder="Nama lengkap"
                    aria-label="nama"
                    aria-describedby="basic-addon1"
                />
            </InputGroup>
            <InputGroup className="mb-2">
                <Form.Control
                    placeholder="email"
                    aria-label="email"
                    aria-describedby="basic-addon1"
                />
            </InputGroup>

            <InputGroup className="mb-2">
                <Form.Control placeholder="password"
                    aria-label="password"
                    aria-describedby="basic-addon1"
                />
            </InputGroup>
            <InputGroup className="mb-2">
                <Form.Control placeholder="konfirmasi password"
                    aria-label="password"
                    aria-describedby="basic-addon1"
                />
            </InputGroup>

            <div class="d-grid gap-2">
                <button class="btn btn-primer" type="submit">Daftar</button>
            </div>
        </div>
    )
}

export default DaftarForm;