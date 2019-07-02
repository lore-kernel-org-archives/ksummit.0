Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A4CD10BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 23:41:38 +0000 (UTC)
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A6CF970D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 23:41:37 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s27so183985pgl.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Jul 2019 16:41:37 -0700 (PDT)
Date: Tue, 2 Jul 2019 16:41:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <201907021638.3D0AC00@keescook>
References: <1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu> <201907021559.FEC3922@keescook>
	<20190702231858.GK3032@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190702231858.GK3032@mit.edu>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 02, 2019 at 07:18:58PM -0400, Theodore Ts'o wrote:
> On Tue, Jul 02, 2019 at 04:04:31PM -0700, Kees Cook wrote:
> > > Step 1)   git config am.messageid true
> > 
> > This is a lossy action: we don't know which list the ID came from (e.g.
> > many things are sent to subsystem lists and not lkml).
> 
> Why do we need to care which list the ID came from?  Many messages are
> cc'ed to multiple lists that are archived on lore.kernel.org.  And it
> doesn't matter:
> 
> 	lore.kernel.org/r/<message-id>
> 
> ... will work without needing to know which list it was sent to.
> 
> > > Step 2)   Write and install a .git/hooks/applypatch-msg script which
> > > 	  looks for Message-Id: and transmogrifies that line to a
> > > 	  Link: trailer, using the lore.kernel.org URL template
> > 
> > I think the lorifier.py[1] mentioned earlier has 90% of the "step 2"
> > logic, including caching the lore list mappings. Is there a "git am" hook
> > we could build on instead? /me looks. Yes; seems to be "applypatch-msg"?
> > Unclear if the email headers are included...
> 
> applypatch-msg is the git hoook I had suggested above.
> 
> The documentation states:
> 
>     This hook is invoked by git-am[1]. It takes a single parameter,
>     the name of the file that holds the proposed commit log
>     message. Exiting with a non-zero status causes git am to abort
>     before applying the patch.
> 
>     The hook is allowed to edit the message file in place, and can be
>     used to normalize the message into some project standard
>     format. It can also be used to refuse the commit after inspecting
>     the message file.
> 
> 
> That to me says the e-mail headers have already been stripped.
> Fortunately, using am.messageid=true should work since that is part of
> the proposed commit message.

This works for me:

$ git config am.messageid true
$ cat >.git/hooks/applypatch-msg <<'EOF'
#!/bin/sh
. git-sh-setup
perl -pi -e 's|^Message-Id:\s*<?([^>]+)>?$|Link: https://lore.kernel.org/r/$1|g;' "$1"
test -x "$GIT_DIR/hooks/commit-msg" &&
	exec "$GIT_DIR/hooks/commit-msg" ${1+"$@"}
:
EOF
$ chmod a+x .git/hooks/applypatch-msg

-- 
Kees Cook
