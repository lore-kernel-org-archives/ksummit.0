Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C3DF5BBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 03:44:16 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5EF8B70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 03:44:16 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id s13-v6so2730612pfi.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Sep 2018 20:44:16 -0700 (PDT)
Date: Tue, 4 Sep 2018 20:44:09 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Laura Abbott <labbott@redhat.com>
Message-ID: <20180905034407.GA2983@localhost.localdomain>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On Tue, Sep 04, 2018 at 01:58:42PM -0700, Laura Abbott wrote:
> I'd like to start a discussion about the stable release cycle.
> 
> Fedora is a heavy user of the most recent stable trees and we
> generally do a pretty good job of keeping up to date. As we
> try and increase testing though, the stable release process
> gets to be a bit difficult. We often run into the problem where
> release .Z is officially released and then .Z+1 comes
> out as an -rc immediately after. Given Fedora release processes,
> we haven't always finished testing .Z by the time .Z+1 comes
> out. What to do in this situation really depends on what's in
> .Z and .Z+1 and how stable we think things are. This usually
> works out fine but a) sometimes we guess wrong and should have
> tested .Z more b) we're only looking to increase testing.
> 
> What I'd like to see is stable updates that come on a regular
> schedule with a longer -rc interval, say Sunday with
> a one week -rc period. I understand that much of the current
> stable schedule is based on Greg's schedule. As a distro
> maintainer though, a regular release schedule with a longer
> testing window makes it much easier to plan and deliver something
> useful to our users. It's also a much easier sell for encouraging
> everyone to pick up every stable update if there's a known
> schedule. I also realize Greg is probably reading this with a very
> skeptical look on his face so I'd be interested to hear from
> other distro maintainers as well.


If this discussion is happening, I would like to be part of it. As
Amazon Linux kernel maintainer, I surely can relate with the issues of
regression introduction. And as of today, Amazon Linux does rely
on stable kernels.

Now, I am not sure if making the stable rc cycle longer would actually
improve the regression issue. As already mentioned over other emails
in this thread, longer rcs == more patches == more regressions. Given
that we set our own internal cadence, and we do not commit on releasing
every single stable rc, picking what ever is the latest rc is what we
typically do.

Also, as for the cadence of the stable branches, what I have noticed
is that having one kernel per week should be enough. However, I do
also see that there will always be cases of more than one release
per week for the embargo cases (at least based on my last observations
of LTS branches), and those usually also means we need to carry or
cherry pick patches.

With that said, I would like to see out of the discussion more on:
- What can be done to improve the regression introduction? I also
agree that regression free is a target, not necessarily achievable,
but sharing the testing strategies may be one thing to consider
to be done in rc cycles.
- What can be done to improve the embargo process and CVE managment.
- Should distro be using stable / LTS kernels?

BR, 

Eduardo

> 
> Thanks,
> Laura
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
