Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DAFA0DCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 02:22:04 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C91C174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 02:22:04 +0000 (UTC)
Date: Thu, 13 Jun 2019 23:21:45 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20190613232145.5f1c38e9@coco.lan>
In-Reply-To: <fed003f1f105ab1fab5e96d71382f5084a37a5d7.camel@perches.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<20190613142621.6a934377@coco.lan>
	<1560451292.3329.51.camel@HansenPartnership.com>
	<20190613161141.41f90b83@coco.lan>
	<fed003f1f105ab1fab5e96d71382f5084a37a5d7.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
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

Em Thu, 13 Jun 2019 12:20:00 -0700
Joe Perches <joe@perches.com> escreveu:

> On Thu, 2019-06-13 at 16:11 -0300, Mauro Carvalho Chehab wrote:
> > Yeah, a tool or a CI bot test with would help to identify binary-identical
> > changes would be really helpful, as this could help a lot maintainers to
> > decide either to take or not cleanup patches (including those coccinelle
> > stuff) without requiring hardware testing.  
> 
> An unfortunate aspect of GCC with any kind of tool
> is that binary identical compilation objects are
> not guaranteed with identical input source files.

A quick look at:

	https://stackoverflow.com/questions/46801881/why-does-gcc-produce-different-compiled-binaries-for-programs-that-use-different

seems to indicate that using objdump -s would produce identical
results. I did a quick test here with gcc 9. It didn't work.

However, using objdump -S worked:

$ rm ./drivers/scsi/isci/port.o; make M=drivers/scsi/; objdump -S ./drivers/scsi/isci/port.o >./drivers/scsi/isci/port-v1.a; \
  rm ./drivers/scsi/isci/port.o; make M=drivers/scsi/; objdump -S ./drivers/scsi/isci/port.o >./drivers/scsi/isci/port-v2.a; \
  diff -u ./drivers/scsi/isci/port-v1.a ./drivers/scsi/isci/port-v2.a

  CC      drivers/scsi//isci/port.o
  AR      drivers/scsi//isci/built-in.a
  AR      drivers/scsi//built-in.a
  Building modules, stage 2.
  MODPOST 5 modules
  CC      drivers/scsi//isci/port.o
  AR      drivers/scsi//isci/built-in.a
  AR      drivers/scsi//built-in.a
  Building modules, stage 2.
  MODPOST 5 modules

<no diffs>

Thanks,
Mauro
