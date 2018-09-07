Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 80056E8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:19:15 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EEFA28B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 08:19:14 +0000 (UTC)
Date: Fri, 7 Sep 2018 10:19:12 +0200
From: Jan Kara <jack@suse.cz>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20180907081912.GB14554@quack2.suse.cz>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu 06-09-18 16:24:03, Kees Cook wrote:
> On Thu, Sep 6, 2018 at 4:18 PM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > Hi Kees,
> >
> > On Thu, 6 Sep 2018 11:24:11 -0700 Kees Cook <keescook@chromium.org> wrote:
> >>
> >> If there was an agreement by all maintainers that deprecated
> >> functions/patterns should not be added, and we documented the
> >> deprecation somewhere like Documentation/process/deprecated.rst, then
> >> we could make the declaration that if such functions got added (it's
> >> easy to mechanically check for them), it would be the responsibility
> >> of the author and maintainer chain to see that it got fixed before the
> >> release is cut. We already have this for things like "breaks the x86
> >> allmodconfig build" or similar. The checking would be manual, and the
> >> enforcement would be by agreement, but it'd be better than the kind of
> >> "please don't do this" hand-waving we've had in the past.
> >
> > I could do this in linux-next, of course, the same way I check for
> > missing signed-off-bys.  All I would need is the list of deprecated
> > things.
> 
> Hopefully we can all agree on deprecating strcpy() and strncpy() in
> favor of strscpy()?

So if you want to start enforcing "no deprecated functions in new patches",
then I'm afraid you will need to get a wider consensus on every deprecated
function. Otherwise this ends up like another checkpatch which annoys
quite some people because they don't consider the warnings interesting.

To take your example above, if I get an email like: "You must not use
strcpy(name, ".."). Use strscpy() instead in your patch." then it should be
accompanied by a good explanation why the change needs to be made.
Otherwise people get annoyed by this check pushing more work onto them.
And this is different from other checks e.g. 0-day does - 99% of developers
agree that kernel should always built so they are OK with the burden of
fixing compilation of exotic configuration their patch breaks. And with
deprecation you need to do similar convincing for each and every deprecated
function...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
