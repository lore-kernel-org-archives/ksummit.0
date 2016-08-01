Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 24AE671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 22:56:48 +0000 (UTC)
Received: from outbound1.eu.mailhop.org (outbound1.eu.mailhop.org
	[52.28.251.132])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20EAF263
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 22:56:46 +0000 (UTC)
Date: Mon, 1 Aug 2016 22:56:38 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160801225638.GE4541@io.lakedaemon.net>
References: <1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
	<20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<20160801202320.GB3296@wotan.suse.de>
	<CALCETrXZicXvXPFC=NenCCJ76rB=2shBzEfkUb4xgHh0Vrub+A@mail.gmail.com>
	<20160801205706.GE3296@wotan.suse.de>
	<CALCETrXCfZnX3MtV=DHov1+qcWZOOcEzTMXxVx5zr1QYtAVoPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXCfZnX3MtV=DHov1+qcWZOOcEzTMXxVx5zr1QYtAVoPw@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Kyle McMartin <kyle@kernel.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>, Andy Lutomirski <luto@kernel.org>,
	Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hey Andy, Luis, Mimi,

On Mon, Aug 01, 2016 at 02:14:52PM -0700, Andy Lutomirski wrote:
> Or he could use my old suggestion instead: rather than signing the
> firmware blob itself, sign a little data structure like this:
> 
> struct linux_blob_signed_data {
>   unsigned char magic[8];  // "LINUXSIG" -- for domain separation in case someone messes up
>   uint32_t version;  // = 1
>   unsigned char sha256[32];  // SHA256 hash of the blob
>   uint32_t type;  // what type of thing this is (firmware, etc)
>   unsigned char description[];  // the remainder of the structure is "iwlwifi-whatever.ucode", etc.
> };

I would include the length of the blob in here as well.

thx,

Jason.
