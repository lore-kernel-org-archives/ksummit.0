Return-Path: <seanpaul@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 173D8E4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 13:16:13 +0000 (UTC)
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
	[209.85.161.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8FB1B89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 13:16:12 +0000 (UTC)
Received: by mail-yw1-f65.google.com with SMTP id z64so3796360ywe.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 06:16:12 -0700 (PDT)
Received: from mail-yw1-f43.google.com (mail-yw1-f43.google.com.
	[209.85.161.43])
	by smtp.gmail.com with ESMTPSA id j3sm533689ywf.35.2019.08.23.06.16.09
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 23 Aug 2019 06:16:10 -0700 (PDT)
Received: by mail-yw1-f43.google.com with SMTP id i138so3792002ywg.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 06:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
In-Reply-To: <CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Fri, 23 Aug 2019 09:15:30 -0400
Message-ID: <CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Thu, Aug 22, 2019 at 11:04 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Thu, Aug 22, 2019 at 7:58 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > So yes, I'd *much* rather see that "Link" line than try to make a
> > "Change-ID" line be a thing.
>
> Tangential note: since it looks like "Link:" lines are going to get
> more common in general, maybe somebody with the right tck/tk-fu can
> make a tool like 'gitk' be able to just do the hyperlinking thing (it
> already does it for commit hashes in the commit message, but wouldn't
> it be convenient to do that for web links too and open a browser
> tab?).
>
> And maybe we can even make git.kernel.org do it too (I think that uses cgit?).
>
> I think that might make it just nicer in general to browse the logs
> and actually follow the links without cut-and-paste games..
>
> So using a generic "Link:" tag that can be used for multiple different
> things sounds like a win in general over some specialized change-ID
> tag. No?

Only if you've uploaded the patch somewhere before sending it to the
mailing list. I think this would satisfy the Gerrit crowd, since
they're presumably uploading the patch to Gerrit, getting some review
on it and then sending it upstream. They will have a link. If you're
just interested in being archival tool friendly, you probably just
want to add some uuid cookie to the patch and post it directly to the
mailing list.

That said, I don't think Change-Id (or Uuid or whatever the cookie tag
is named) needs to be committed to git. If people stuck their
Change-Id tag below '---' in their mail, it would solve the issue of
finding old revisions on the list. This would also allow tooling (like
patchwork) to track across revisions. It's pretty easy to work
backwards from a commit to _any_ one revision of the patch on the m-l,
and that will give you the Change-Id.

If Change-Id becomes widely useful below '---', you could add support
in patchwork to allow direct linking by Change-Id. This would allow
people to add Link: <patchwork-server/change-id/<change-id> to their
commit messages without first uploading it somewhere.

Sean

>
>               Linus
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
