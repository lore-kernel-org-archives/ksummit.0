Return-Path: <brendanhiggins@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34320CCE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:03:52 +0000 (UTC)
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A2B6B89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:03:51 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 196so5080140pfz.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 17:03:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
In-Reply-To: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 22 Aug 2019 17:03:39 -0700
Message-ID: <CAFd5g46G6KvLU7+mkCB1mULPG2x=X5TfUmjmm0_mahpgEZ_9JA@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
	like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
[...]
> Specifically, let me list the problems I'd like to solve:
>
> 1. If I see a commit in Linux, I would like to be able to easily find
> all of the mailing list discussions relevant to that commit.  I know
> there are proposals about including the Message-Id of the final post
> in the commit log and that is certainly better than nothing, but the
> Message-Id will only get you a link to the final version of the patch.
> If the relevant discussion happened on a previous version of that
> patch then you need to find it yourself.  This gets harder if the
> patch changed subject, touched different files, if parts of the series
> landed at different times, and if multiple people were involved in
> posting different versions of the patch.  If the commit in Linux has a
> Change-Id then the old versions are logically linked and easier to
> associated with one another.

Please correct me if I am wrong, but I believe this feature already
exists in cregit[1]. I believe this is called Email2git[2].

To be clear, I am not against the Change-Id tag, but I think we
already have support for what you are describing here.

> 2. If I do a search through old mailing list archives and I stumble
> upon a patch that didn't land, I can more easily find different
> versions of that patch if I have a Change-Id.  Some of these different
> versions may have relevant discussions that explains why the patch
> didn't land.  Finding these other patches without a Change-Id might be
> hard, again because they may touch different files, have a different
> subject, or have been posted by a different person.

Yes! I would love this, and I don't think Email2git handles this;
nevertheless, I am not sure how difficult it would be to add support
for that to Email2git.

>
> At the moment using a Change-Id in the way I described would require
> searching through mailing lists for the Change-Id string to find other
> versions of the same patch.  However, I would expect it would only be
> a matter of time before tools like patchwork are able to use Change-Id
> to associate one version of a patch with the next version.  I would
> also expect that allowing Change-Id to exist would allow someone to
> (perhaps) create a gerrit instance that watched the kernel mailing
> list and mirrored mailing list discussions in the GUI.  In other
> words, once such tools exist presumably Change-Id will be much more
> useful: you will eventually be able to paste a Change-Id into a tool
> and get links to all relevant discussion and related posts.
>
>
> The basic summary is that I'd like there to be some way to track a
> logical patch over its lifetime.  I don't believe there is a reliable
> (non-heuristic) way to do this today and I think Change-Id provides a

I am not sure what Email2git does (I assume it uses a heuristic), but
it seems reasonably reliable after a couple of random spot checks.

> nice solution.  While we could come up with a new and different
> solution (because Change-Id was not invented here), it feels like
> adopting Change-Id is convenient and easy and provides a true benefit.
> Change-Id works super well with the decentralized/email workflow for
> patches and can be phased in over time (or it can stay optional
> forever).

I have wanted to do some of this tracking a commit across multiple
revisions and I have not found a simple way to do it. I keep meaning
to look into Email2git more closely, but it is hard for me to imagine
something more straightforward than something analogous to a
Change-Id.

So I like the idea, but I think it is probably worth first
investigating Email2git and see if it solves the same use case. If
Email2git is portable and is easy to build into a workflow outside of
cregit, then it should be equally easy to represent the metadata that
Change-Id provides outside of the mailing lists.

Thanks for thinking about this!

[1] https://cregit.linuxsources.org
[2] https://www.linux.com/tutorials/email2git-matching-linux-code-its-mailing-list-discussions/
