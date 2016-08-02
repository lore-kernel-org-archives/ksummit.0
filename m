Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B508F941
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 18:12:47 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2E7A821F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 18:12:47 +0000 (UTC)
Message-ID: <1470161563.2485.36.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 02 Aug 2016 14:12:43 -0400
In-Reply-To: <CALCETrUnhQ_4J_hOBG-Z5aSbF=rEkKckbnA46PUs1ZL0vY3Uew@mail.gmail.com>
References: <1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
	<20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<20160801202320.GB3296@wotan.suse.de>
	<CALCETrXZicXvXPFC=NenCCJ76rB=2shBzEfkUb4xgHh0Vrub+A@mail.gmail.com>
	<20160801205706.GE3296@wotan.suse.de>
	<CALCETrXCfZnX3MtV=DHov1+qcWZOOcEzTMXxVx5zr1QYtAVoPw@mail.gmail.com>
	<1470098031.18751.58.camel@HansenPartnership.com>
	<CALCETrXHfUULy-EB13Kbkjwco-2UVgsuRsG+OicZT6_uOkzeqA@mail.gmail.com>
	<CALCETrWqpQV1AyxVx5eTkJiOe3t7ZFpSAuN2RG3JNHD-gqm0uA@mail.gmail.com>
	<CALCETrUj3Xkbpf4qbGDvOoPCtWTOJovmzYyuAAd+6EmkRYzkyQ@mail.gmail.com>
	<1470100412.18751.70.camel@HansenPartnership.com>
	<CALCETrUnhQ_4J_hOBG-Z5aSbF=rEkKckbnA46PUs1ZL0vY3Uew@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Johannes Berg <johannes@sipsolutions.net>, Kyle McMartin <kyle@kernel.org>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-08-01 at 18:23 -0700, Andy Lutomirski wrote:
> On Mon, Aug 1, 2016 at 6:13 PM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Mon, 2016-08-01 at 17:48 -0700, Andy Lutomirski wrote:
> > > [1] The authattr mechanism isn't internally domain-separated, so
> > > signatures with authattrs can be used to generate valid 
> > > signatures over invalid data. I think David Howells worked around 
> > > this in the kernel after I pointed it out.
> > 
> > How?  The only fiddle I can see you doing is swapping empty 
> > attributes for data and vice versa.
> 
> Every valid PKCS#7 signature with authattrs is also a valid PKCS#7
> without authattrs over a messy ASN.1 object that contains the
> authattrs.  They forgot to make the thing that's fed to the raw
> signature primitive distinct for the two modes.

OK, I accept this, but for PKCS7 signatures, the signing and hashing
algorithms are required to be part of the authenticated attributes, so
this means that if they're missing we know the packet is invalid, so
this attack should be unavailable against signed firmware.

James
 
