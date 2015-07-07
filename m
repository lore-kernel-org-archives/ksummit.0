Return-Path: <PeterHuewe@gmx.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C398BA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:50:14 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3ED1F155
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:50:13 +0000 (UTC)
From: Peter =?iso-8859-1?q?H=FCwe?= <PeterHuewe@gmx.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 8 Jul 2015 00:51:41 +0200
References: <20150707092434.GE11162@sirena.org.uk>
	<20150707171819.GF11162@sirena.org.uk>
	<559C11C4.80301@roeck-us.net>
In-Reply-To: <559C11C4.80301@roeck-us.net>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <201507080051.42985.PeterHuewe@gmx.de>
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	grant@secretlab.ca, Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

I definitely think discussing the next steps in terms of automated regression 
testing is important - so thanks for raising this issue!!

> >> Maybe list all known ones as a start ?
> > 
> > Off the top of my head the automated ones I'm aware of are Olof's build
> > & boot test, Dan running smatch and I think some other static analysis
> > stuff, someone (not sure who?) running some coccinelle stuff, Coverity
> > and I've got a builder too.

For the TPM subsystem I have several things in place:
- applying patches automatically triggers a build on travis-ci.org
-- it triggers some basic style checkers
-- the build runs a qemu (with the tpm simulator) running another qemu (which 
now sees a real /dev/tpm0) with the new kernel.
--- the qemu-qemu-linux runs my tpm driver testsuite.

The reason behind this is that I can hook up besides the TPM1.2 simulator also 
the binary only windows based TPM2.0 simulator (with wine) without modifying 
qemu source -- but still the qemu-qemu-kernel sees 'real' hardware.

- some scripts for deploying new kernels to real hw machines and running tests 
with real hw tpms

- a mocked i2c tpm which I can hook up via the I2C_Slave interface, which also 
passes my driver testsuite -- so I can test the drivers within UML :)

- and of course wolfram's ninja-check scripts for style checkers

 
> Plus mine, of course. Only part missing is automated bisect and e-mail
> if something starts failing.


Yeah - getting the reports reasonably fast is probably the most important 
stuff -- the 0day testing really does a great job here.


Thanks,
Peter
