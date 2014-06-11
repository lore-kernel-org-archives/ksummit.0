Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DFF957AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 22:02:11 +0000 (UTC)
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B9CC201D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 22:02:10 +0000 (UTC)
Received: by mail-ve0-f176.google.com with SMTP id db12so860769veb.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 15:02:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140612075355.4b0d1f5a@canb.auug.org.au>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
	<CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
	<20140612075355.4b0d1f5a@canb.auug.org.au>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 11 Jun 2014 15:01:48 -0700
Message-ID: <CALCETrXEZ-Z+Kqgs28RCe7r9M-+QhbR2tQdMtznDB2uwmSmvYA@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset=UTF-8
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [Ksummit-discuss] Topic: Removal of code that is still in use
 by users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 11, 2014 at 2:53 PM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> Hi Bjorn,
>
> On Wed, 11 Jun 2014 13:43:18 -0600 Bjorn Helgaas <bhelgaas@google.com> wrote:
>>
>> all did our jobs perfectly, we would never add a change to Linux that
>> broke compilation of anything.  So if there's a file that doesn't
>> compile anymore, I think of that as a result of a mistake somewhere
>> along the line.  We can use that mistake to deduce that nobody cares
>> anymore, but it'd be a lot nicer to have a scheme that didn't depend
>> on people making random mistakes.
>
> We could start making nonrandom mistakes? ;-)

How about adding CONFIG_DELETED_THINGS.  If you enable it, you get a
message asking you to speak up if you actually need anything in there.
CONFIG_DELETED_THINGS would default to n, and the new (and temporary)
things under it would also default to n.

Think feature-removal-schedule, but with teeth.

--Andy
