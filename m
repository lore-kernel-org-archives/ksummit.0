Return-Path: <dave.hansen@linux.intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 36A2D83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 14:17:17 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DF4D01A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 14:17:16 +0000 (UTC)
To: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
	<CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
	<0E98DCC5-01EE-4FA7-B6D4-72772279BDFF@arm.com>
	<CAGXu5jL085S-feY_uy68tCMZwOHcg5QPzyE0eXiJviqCwau90g@mail.gmail.com>
From: Dave Hansen <dave.hansen@linux.intel.com>
Message-ID: <57A34E66.1040608@linux.intel.com>
Date: Thu, 4 Aug 2016 07:17:10 -0700
MIME-Version: 1.0
In-Reply-To: <CAGXu5jL085S-feY_uy68tCMZwOHcg5QPzyE0eXiJviqCwau90g@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Jann Horn <jann@thejh.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
 whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/03/2016 10:32 PM, Kees Cook wrote:
>> > BTW, while not a kernel security feature, I've been asked in the past to enable
>> > execute-only (no read) permissions on arm64 (e.g. mmap(PROT_EXEC)).
>> > I have a simple patch for this, though I'm not 100% sure about user ABI implications.
>> > So far I'm not aware of any user application using PROT_EXEC only and also
>> > expecting PROT_READ.
> x86 is working on this too, and IIRC, they uncovered some "fun" ELF
> corner cases. I've added Dave for some more background...

I haven't been able to find anything in the wild that actually uses
PROT_EXEC by itself.  The corner cases I hit were because I took a
PROT_READ|PROT_EXEC mapping and munged it to really be PROT_EXEC only as
an experiment.  It blew up pretty spectacularly because of
non-page-aligned ELF sections creating pages that really do contain
instructions _and_ read-only data.

The exec-only support got in 4.6 and does work under qemu today if
anyone wants to give it a try.
