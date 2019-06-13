Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8319A1117
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 17:09:28 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E4B99711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 17:09:27 +0000 (UTC)
Date: Thu, 13 Jun 2019 14:09:11 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Message-ID: <20190613140911.7a338651@coco.lan>
In-Reply-To: <yq1d0jh1qqa.fsf@oracle.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<yq1d0jh1qqa.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

Em Thu, 13 Jun 2019 10:53:33 -0400
"Martin K. Petersen" <martin.petersen@oracle.com> escreveu:

> Mauro,
> 
> > Yet, we do enforce the current coding practices to all new code
> > we receive.  
> 
> The problem in SCSI is that standalone new code is rare. Almost every
> patch changes existing code.
> 
> Mixing code with tabs for indentation with old code that uses for
> instance two spaces results in code that is very hard to follow. That's
> why the preference is to stick to the existing style of a given file.

If you have code there with an indentation that it is not multiple of 8,
that makes things harder.

Yet, if the file has a consistent indentation[1], you could try
something like:

	$ expand -t 8 drivers/scsi/gdth_proc.c | \
	  unexpand --first-only -t 4 | \
	  sed -E 's,\s+$,\n,' > a && mv a drivers/scsi/gdth_proc.c

[1] and if it doesn't, then indentation is already broken there.

> 
> Also, attempts to use code formatters to produce sensible results have
> failed. Many of the drivers include tables or carefully formatted
> comments or data structures. So without a human involved, automatic code
> formatting produces complete junk.

Yeah, human review is important to avoid such kind of issues.

automatic indentation tools sometimes produce very crappy things.

-

Out of curiosity, I tried using astyle with a "basic" set of options:

	$ astyle --indent=force-tab=8 --convert-tabs --style=linux --lineend=linux --pad-oper --pad-comma --pad-header --align-pointer=name --align-reference=name --break-one-line-headers $(find drivers/scsi -type f -name '*.[ch]')

The result was not perfect, but, at least on a quick look - the result 
seemed a lot better than the original one on most places.

Yet, a human will take some time to check about bad things there
due to the size of the diff:

	$ git diff|wc -l
	507277

Checking if something broke could probably be made automatically,
by checking if the produced .o files (or the corresponding .a files)
are identical to files produced before the changes.

-

Being even more curious, I took a file that uses 3 spaces for alignment:

	$ ./scripts/checkpatch.pl -f drivers/scsi/gdth_proc.c --max-line-length=999
	total: 484 errors, 544 warnings, 586 lines checked

Using astyle:

	$ astyle --indent=force-tab=8 --convert-tabs --style=linux --lineend=linux --pad-oper --pad-comma --pad-header --align-pointer=name --align-reference=name --break-one-line-headers drivers/scsi/gdth_proc.c

A visual inspection on it looked pretty decent to my eyes. The
automatic tool also reported a lot less issues:


	$ ./scripts/checkpatch.pl -f drivers/scsi/gdth_proc.c --max-line-length=999
	total: 6 errors, 18 warnings, 590 lines checked

Running checkpatch on fix mode a few times on fix mode makes it look even
better:

	$ ./scripts/checkpatch.pl --strict --fix-inplace -f drivers/scsi/gdth_proc.c
	total: 4 errors, 17 warnings, 590 lines checked

Thanks,
Mauro
