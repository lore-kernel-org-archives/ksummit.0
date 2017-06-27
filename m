Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 31DCECE1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 20:53:02 +0000 (UTC)
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 79853152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 20:53:01 +0000 (UTC)
Received: by mail-it0-f46.google.com with SMTP id b205so22800981itg.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 13:53:01 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Tue, 27 Jun 2017 13:53:00 -0700
Message-ID: <CAGXu5jKeORY3Djv1EFNitdc=7X9rdvRekBiu2mRTER_Z6nJ=Mw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Christoph Hellwig <hch@infradead.org>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 12:27 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> No. The defconfigs are useless. They are fundamentally broken, excatly
> because there is never one config that can work.
>
> They do need to be of the "kvmconfig" type, but for sane subconfirurations.
>
> So I'd look for something like
>
>     make modernpcconfig # enable minimal modern PC workstation stuff
>     make f25config  # enable minimal stuff required for F25
>     make amdconfig # enable the core modern AMD stuff
>
> or something like that.
>
> But it's not going to happen, because everybody thinks *their* code is
> so supremely important, so the "minimal config" is literally a doomed
> concept ;(

I'd be curious to see someone try this anyway, just to see how it
turns out. It's been suggested to me before for hardening features,
(e.g. "make hardenedconfig") and I think it would turn out better than
trying to encode it directly in Kconfig itself. Each kernel release
can have its "make *config" targets updated as the individual CONFIGs
change... though I suspect it might bitrot... But it would be nice to
add "make paranoidconfig" to the above set of make *config runs.

I know I won't have time to do this in the near future, though, so the
best I've done is spew paranoid default suggestions into the KSPP wiki
instead[1]. My plan for spending time on Kconfig currently is to try
to get the compiler feature detection[2] working sanely.

-Kees

[1] http://kernsec.org/wiki/index.php/Kernel_Self_Protection_Project/Recommended_Settings
[2] http://www.spinics.net/lists/linux-kbuild/msg15070.html

-- 
Kees Cook
Pixel Security
