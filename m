Return-Path: <mingo.kernel.org@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E05D7C11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 14:52:36 +0000 (UTC)
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F94E1A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 14:52:36 +0000 (UTC)
Received: by mail-wm0-f67.google.com with SMTP id d79so11335272wmi.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 07:52:36 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Thu, 20 Apr 2017 16:52:31 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20170420145231.x5k4chrocha3xxvu@gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<20170418181506.30de0470@vento.lan>
	<20170419163636.6747a232@lwn.net>
	<alpine.LSU.2.20.1704200037430.12121@cbobk.fhfr.pm>
	<20170420052316.GA24503@infradead.org>
	<1492695238.27758.19.camel@HansenPartnership.com>
	<CACVxJT-nu+oayFA=ncoD0uMJSWYdaiV0A9-PxEmN_HzYgCc=4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACVxJT-nu+oayFA=ncoD0uMJSWYdaiV0A9-PxEmN_HzYgCc=4g@mail.gmail.com>
Cc: Christoph Hellwig <hch@infradead.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


* Alexey Dobriyan <adobriyan@gmail.com> wrote:

> On Thu, Apr 20, 2017 at 4:33 PM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Wed, 2017-04-19 at 22:23 -0700, Christoph Hellwig wrote:
> >> On Thu, Apr 20, 2017 at 12:41:04AM +0200, Jiri Kosina wrote:
> >> > There is one piece of feedback I guess I can share right away on
> >> > this -- I've heard so many complaints that Doc<tab>/kern<tab>
> >> > -par<tab> completion stopped to yield Documentation/kernel
> >> > -parameters.txt that it's not really funny any more :)
> >>
> >> Yeah.  All this moving files around really messed up my workflows.
> >> Let's see if I'll be able to adjust eventually.
> >
> > Seconded.  The one that trips me up the most is the uapi one ... I
> > always forget that include/linux/X.h might have an
> > include/uapi/linux/X.h counterpart which is where the structure I'm
> > looking for actually is.
> 
> Let's not forget x86 master system call definition table movement.
> Just as finger memory is developed they move it again.

If you mean arch/x86/entry/syscalls/syscall_64.tbl, it was originally introduced 6 
years ago as arch/x86/syscalls/syscall_64.tbl and moved _once_ to 
arch/x86/entry/syscalls/syscall_64.tbl.

Same for arch/x86/syscalls/syscall_32.tbl, so I'm not sure what you are talking 
about here...

Thanks,

	Ingo
