Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F0F7C723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 00:33:58 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 729551BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 00:33:58 +0000 (UTC)
Message-ID: <1470098031.18751.58.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>, "Luis R. Rodriguez"
	<mcgrof@suse.com>
Date: Mon, 01 Aug 2016 20:33:51 -0400
In-Reply-To: <CALCETrXCfZnX3MtV=DHov1+qcWZOOcEzTMXxVx5zr1QYtAVoPw@mail.gmail.com>
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
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Kyle McMartin <kyle@kernel.org>, Mark Brown <broonie@sirena.org.uk>,
	Andy Lutomirski <luto@kernel.org>,
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

On Mon, 2016-08-01 at 14:14 -0700, Andy Lutomirski wrote:
> struct linux_blob_signed_data {
>   unsigned char magic[8];  // "LINUXSIG" -- for domain separation in
> case someone messes up
>   uint32_t version;  // = 1
>   unsigned char sha256[32];  // SHA256 hash of the blob
>   uint32_t type;  // what type of thing this is (firmware, etc)
>   unsigned char description[];  // the remainder of the structure is
> "iwlwifi-whatever.ucode", etc.
> };

Where's the signature in this?  I see a hash but not a signature. 
 However since you NAK'd them: now you're reinventing stuff pkcs7
already has.  pkcs7 has ASN.1 encodings of the hash and the signature,
so no need to repeat it in a non standard way.  In fact, since the
kernel already understands pkcs7, why not just use it (DER encoded). 
 pkcs7 can do an attached and detached signature format, so we could
just simply use it to package signed modules.

James
