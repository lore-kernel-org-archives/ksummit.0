Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C254AACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 00:07:11 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0181.hostedemail.com
	[216.40.44.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50C63775
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 00:07:11 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 8E4BE18037FF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:20:06 +0000 (UTC)
Message-ID: <fed003f1f105ab1fab5e96d71382f5084a37a5d7.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, James Bottomley
	<James.Bottomley@HansenPartnership.com>
Date: Thu, 13 Jun 2019 12:20:00 -0700
In-Reply-To: <20190613161141.41f90b83@coco.lan>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<20190613142621.6a934377@coco.lan>
	<1560451292.3329.51.camel@HansenPartnership.com>
	<20190613161141.41f90b83@coco.lan>
Content-Type: text/plain; charset="ISO-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, 2019-06-13 at 16:11 -0300, Mauro Carvalho Chehab wrote:
> Yeah, a tool or a CI bot test with would help to identify binary-identical
> changes would be really helpful, as this could help a lot maintainers to
> decide either to take or not cleanup patches (including those coccinelle
> stuff) without requiring hardware testing.

An unfortunate aspect of GCC with any kind of tool
is that binary identical compilation objects are
not guaranteed with identical input source files.
