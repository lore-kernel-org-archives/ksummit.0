Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6FDF1F40
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 07:31:36 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0229.hostedemail.com
	[216.40.44.229])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 096C91DD19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 07:31:35 +0000 (UTC)
Message-ID: <f76674113d5e5207458d2a62aaee723dbe554483.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>, Mauro Carvalho Chehab
	<mchehab+samsung@kernel.org>
Date: Fri, 14 Jun 2019 00:31:31 -0700
In-Reply-To: <yq1v9x8rhqk.fsf@oracle.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<yq1d0jh1qqa.fsf@oracle.com> <20190613140911.7a338651@coco.lan>
	<yq1v9x8rhqk.fsf@oracle.com>
Content-Type: text/plain; charset="ISO-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2019-06-13 at 23:03 -0400, Martin K. Petersen wrote:
> But I want patches from somebody who takes
> ownership and who is willing to validate things. Using real hardware,
> QEMU, output comparison, or interpretive dancing. Doesn't matter.

One of the strengths of linux is nominal support for old hardware.
But simultaneously those older hardware are also rarely tested.

Perhaps a mechanism to move these old, generally unsupported
by an actual maintainer, and rarely tested drivers out of the
mainline drivers directory into a separate obsolete directory
would help isolate the whitespace and trivial api changes.

> I think there is much to be learned from the process of buying
> an obsolete SCSI controller on eBay, beating a driver into shape,
> getting the changes merged, and committing to maintaining things going
> forward.

There is a also a decided lack of general interest in that too.
