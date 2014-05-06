Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9BF16979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:07:44 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.230])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A8C13201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:07:42 +0000 (UTC)
Date: Tue, 6 May 2014 16:07:40 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20140506160740.1245d1f4@gandalf.local.home>
In-Reply-To: <20140506190024.GA1004@kroah.com>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506190024.GA1004@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 6 May 2014 12:00:24 -0700
Greg KH <greg@kroah.com> wrote:


> We do have linux-api, which should be cc:ed for new api additions.  But
> it usually isn't :(

That's the first I've heard of that list. Maybe that's the reason it
hasn't been cc'd much. Hard to Cc lists that you don't know about.

/me goes to look in MAINTAINERS for linux-api mailing list. Nope, not
there.

git grep linux-api gives me:

Documentation/HOWTO:linux-api@vger.kernel.org.
Documentation/SubmitChecklist:    linux-api@vger.kernel.org.
Documentation/ja_JP/HOWTO:linux-api@ver.kernel.org
=E3=81=AB=E9=80=81=E3=82=8B=E3=81=93=E3=81=A8=E3=82=92=E5=8B=A7=E3=82=81=E3=
=81=BE=E3=81=99=E3=80=82

Cool, it's in Japanese too :-)

Commit 1d992ce90 added the email to SubmitChecklist in 2008. Not
something I've looked at since :-/

I guess I should really look at the Documentation directory more often.
God, it's hard enough to get people to write documentation. It is even
harder to get people to read it. :-p


-- Steve
