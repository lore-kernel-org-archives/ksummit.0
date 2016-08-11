Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1BD4F71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Aug 2016 15:44:49 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3F6022A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Aug 2016 15:44:47 +0000 (UTC)
Date: Thu, 11 Aug 2016 18:44:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20160811154429.GB4134@mwanda>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 22, 2016 at 03:57:40PM +0200, Hannes Reinecke wrote:
> > 
> > I guess that almost all functions return only a few possible error codes?
> 
> Precisely. If we had a way of specifying "the return value is an errno
> with the possible values '0', '-EIO', and '-EINVAL'" that would be
> _so_ cool.

I think that's a bad idea.  We should be propagating errors from the
functions we call.  It should be able to change without breaking.

Smatch does a pretty good job of tracking return values, especially
if you rebuild the database over and over once a day like I do.

In some places I hack the database manually. For legacy reasons there
are a couple places that happens but the main way is through this file:
The format is function, space, old value, space, new value:

http://repo.or.cz/smatch.git/blob/HEAD:/smatch_data/db/kernel.return_fixes

One thing that causes problems for Smatch is recursion.  We don't know
what the function returns the first time it's called so we record that
it could return anything.  Then the second time we "know" that it can
return anything.  So the unknown propagates recursively. Another thing
that causes problems is when we copy a return value from another thread
or a work queue.  There are a bunch of places like that where the
programmer knows the return value is negative but it's hard for static
analysis.

I need these manual fixes when not knowing the error code causes
problems because a function does this:
	if (ret)
		return ret;
But the caller does:
	if (ret < 0)
		return ret;
There is a mismatch because Smatch thinks any non-zero is an error but
the caller knows only negatives are errors.

The other reason for the file is that we want to record that the
scnprintf() return value is less than the size parameter.  Ideally, we
could record that strnlen_user() returns "<= count + 1", but Smatch is
not flexible enough to do that yet.  These upper bounds are needed to
prevent integer overflow and buffer overflow warnings.

One thing I get annoyed about is when functions return positive values
but it's not documented what it means.  For example, ocfs2_plock()
returns negatives, zero or FILE_LOCK_DEFERRED.  Possibly this is a bug.
How should I know?  Also em_sti_clock_event_next() should return zero or
-ETIME but it returns zero or one so I think it's buggy.

One last thing, is that it's sometimes impossible to tell when we return
zero unintentionally vs intentionally.  I'm talking about code like
this:
	if (frob_whatever())
		goto out;

It's a missing error code bug 75% of the time and intentional the other
25% of the time.  I feel like this should _always_ have a comment next
to them, just like we _always_ comment /* fall through */ in switch
statements to note the missing break.

regards,
dan carpenter
