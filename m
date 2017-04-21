Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B1A8C3B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 23:19:44 +0000 (UTC)
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 55CDB18F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 23:19:43 +0000 (UTC)
Received: by mail-wr0-f178.google.com with SMTP id c55so62497187wrc.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 16:19:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1492633237.3217.50.camel@HansenPartnership.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1492633237.3217.50.camel@HansenPartnership.com>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Fri, 21 Apr 2017 18:19:18 -0500
Message-ID: <CAErSpo5jO_ENmV2u=2QpWF-KYcq1P0DZO-Cuezv8hwAB4ShwYQ@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Apr 19, 2017 at 3:20 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> I'd like closure on one process issue, if we could achieve it:
>
> Maintainer script automation: Quite a few of us have maintainer scripts
> that send automated email notifications of the status of patches in the
> tree (mostly to stop people flooding the lists with questions about
> what happened to their patches).  We did a script show and tell at the
> last kernel summit, but perhaps we could get closure on a couple of
> issues:

I wasn't at the last summit, and there's a lot of room for improvement
in this area of my life.  Is this show and tell available anywhere?

>    1. Since most people agree that these form of notifications are useful,
>       should we have a standard email for it (or at least a list of things
>       which should be in that email, like commit-id, tree, maintainer,
>       mailing list and the version of the kernel it is expected to be
>       pushed for).
>    2. Given that we all run ad-hoc infrastructure to produce these emails,
>       could we get a set of blessed scripts up on kernel.org for all
>       comers so we can use the central infrastructure rather than rolling
>       our own.
>
> The other things I think it might do us all good is to have a frank
> session on "tasteful rebasing".  We've come around (finally) to the
> conclusion that rebasing isn't always bad.  My own opinion is that
> rebasing to fix issues in patches (particularly those marked for
> stable) so they can backport cleanly and atomically.  There's also less
> of a consensus that rebasing to clean up history is a reasonably good
> thing (provided it's not done just before requesting a pull).  However,
> we have a divergence of opinions not just on whether we should rebase,
> but what constitutes a tasteful rebase.  Just telling people,
> particularly would be new maintainers, that it's a judgement call
> always is unhelpful, we could do with putting together some more
> detailed guidance (assuming we can agree on it).

I'm interested in this, too.  I update topic branches regularly to add
acks, fix typos, fold in fixes discovered before merging to Linus,
etc.  I assume that as long as it hasn't been merged, doing that as
separate patches would just be clutter.  But maybe I'm making life
difficult for contributors who consume those branches.  I almost
always apply patches from email (as opposed to pulling via git), and I
typically base the topic branches on -rc1 or -rc2, because that makes
it simple for me to do these updates.

Bjorn
