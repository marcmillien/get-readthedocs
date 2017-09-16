doc?=boto3
browser?=google-chrome
version?=python-3.5.4

all:
	test -f $(doc).pdf || wget http://media.readthedocs.org/pdf/$(doc)/latest/$(doc).pdf
	$(browser) $(doc).pdf

python:
	test -d $(version)-docs-html || (wget --no-verbose -O python-doc.tar.bz2 https://docs.python.org/3.5/archives/$(version)-docs-html.tar.bz2 && tar -xf python-doc.tar.bz2)
	$(browser) $(version)-docs-html/index.html
