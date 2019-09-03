Return-Path: <torvalds@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D7FACCAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 16:07:20 +0000 (UTC)
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30115831
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 16:07:20 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id a4so1571353ljk.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 03 Sep 2019 09:07:20 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com.
	[209.85.208.178]) by smtp.gmail.com with ESMTPSA id
	a20sm3042060lff.78.2019.09.03.09.07.17
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 03 Sep 2019 09:07:17 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id l20so2155502ljj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 03 Sep 2019 09:07:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
In-Reply-To: <574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 3 Sep 2019 09:07:00 -0700
Message-ID: <CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
To: Laura Abbott <labbott@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 3, 2019 at 6:29 AM Laura Abbott <labbott@redhat.com> wrote:
>
> It's great that we can share these workflows but it still feels like a
> bit of an anti-pattern that we even _need_ to do so.

I don't think we really can mandate some of the tooling details - and
details is what a lot of this is all about.

Some people have their workflow very much tied to some very personal
preferences - like particular email readers, editors etc.

Think back on the days when people used to read email inside of GNU
emacs and use a lot of the random Emacs functionality. There was no
way you could convince those people to do anything else ("everything
at my fingertips in the same environment") and there was no way you
could convince anybody else to use that crazy workflow.

I don't think there are a lot of those "everything inside GNU emacs"
people around any more, but some might exist, and even ignoring that
kind of thing, depending on which MUA you use some things are simply
<i>much</i> more convenient than others. I think a lot of us basically
live in our mail readers, and then it makes a huge difference whether
you're using Mutt or whether you're reading mail inside the web
interface of gmail. All those people who use automation from inside
their mail readers (much more limited than the GNU emacs example, but
still things like "pipe these 50 emails to Xyz") can't just be told
"now you have to use the web interface for patchwork and/or a tool
that downloads things that way.

I think some of the push-back to the GPU people wasn't from them not
inventing the group maintainership like Dave said, but from that being
presented as some kind of "this is the way to do it". When it's just
_one_ way to do it, and other groups have completely different
infrastructure and models..

So I don't think we can force some workflows.

We can force some ground rules. The whole "has to be in next" thing is
pretty separate from how the patches are managed, for example.

And "it has to be visible on a public list for review, and for
lore.kernel.org to archive the discussion, because things need not
just review, but _outside_ review" is pretty obvious for any big
changes.

But even that second "obvious" thing equally obviously cannot be
applied to _every_ patch. Even if you ignore the special embargo
cases, you just have a lot of patches that are local fixes, rather
than big new features. We can't tell people "you can't fix an obvious
bug without having it reviewd on the mailing list first". That would
be frustrating any sane developer if we tried to make that a hard
rule. So even the "obvious" workflow that we all think about for big
development simply can't be some kind of "this is how it must be done"
rule.

                      Linus
