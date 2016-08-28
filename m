Return-Path: <alexander.levin@verizon.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3D471305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 22:38:04 +0000 (UTC)
Received: from omzsmtpe03.verizonbusiness.com (omzsmtpe03.verizonbusiness.com
	[199.249.25.208])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 95880174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 22:38:03 +0000 (UTC)
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Joe Perches <joe@perches.com>
Date: Sun, 28 Aug 2016 18:37:59 -0400
Message-ID: <20160828223759.GA12993@sasha-lappy>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
In-Reply-To: <1472404557.26978.84.camel@perches.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Aug 28, 2016 at 01:15:57PM -0400, Joe Perches wrote:
> On Sat, 2016-08-27 at 22:47 -0400, Levin, Alexander wrote:
>=20
> > Would you agree that by default we shouldn't show anything that's
> > not an error/defect?
>=20
> Not particularly, no.

I think that we need to figure out this disagreement first then. My claim i=
s that checkpatch's output isn't useful.

Based on your bash snippet, populated with the KS program committee + the f=
irst few maintainers I spotted on 'git log':

commiter	commits		issues
arnd		858		2155
axboe		53		22
corbet		15		9
davem		55		81
grant.likely	2		0
gregkh		38 	 	46
hch 	 	393 	 	581
James.Bottomley	15 	 	15
martin.petersen	18 	 	20
mchehab 	678 		1042
mgorman 	104 		256
mingo 	 	58 		192
paulmck 	176 		68
peterz 	 	226 		511
rostedt 	123 		178
shuahkh 	53 		6
tglx 	 	200 		287
torvalds 	64 		89
tytso 		37 		77
viro 	 	350	 	256

And for the last 10,000 commits in the log, that script has observed 10,783=
 issues.

It'll be interesting to hear from these people about their view of checkpat=
ch, but IMO when on average there are more issues than commits I can sugges=
t two possible causes:

 1. People are used to ignore checkpatch warnings.
 2. People aren't using checkpatch.

Can you really make the claim that this is how checkpatch is supposed to be=
 working?

--=20

Thanks,
Sasha=
