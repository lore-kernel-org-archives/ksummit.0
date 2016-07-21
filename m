Return-Path: <mark.rutland@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DF13B2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 15:54:13 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8AF4022D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 15:54:13 +0000 (UTC)
Date: Thu, 21 Jul 2016 16:54:08 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20160721155407.GF20559@leverpostej>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<87lh18i1d6.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lh18i1d6.fsf@x220.int.ebiederm.org>
Cc: Jann Horn <jann@thejh.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
 whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 11, 2016 at 11:30:13AM -0500, Eric W. Biederman wrote:
> Many kernel hardening features are perceived as having downsides affect
> performance or code maintainability.  Which quite frankly is a security
> issue of another flavor because if something does not work well, and or
> is not maintainable after a while it won't get used. 

In some cases (e.g. copy_{to,from}_user checks), I think that's
indicative of the structure of the existing code, and there are existing
opportunities for cleanup/simplification and/or unification regardless
of particular hardening features.

To some extent, it would be better if we could do more ground work
making those areas more maintainable, rather than focussing solely on
getting particular features in ASAP.

Thanks,
Mark.
