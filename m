Return-Path: <john.stultz@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D81E8875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:54:01 +0000 (UTC)
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 75976201D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:54:01 +0000 (UTC)
Received: by mail-pa0-f43.google.com with SMTP id hz1so797547pad.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 May 2014 10:54:01 -0700 (PDT)
Message-ID: <536921B5.8090100@linaro.org>
Date: Tue, 06 May 2014 10:53:57 -0700
From: John Stultz <john.stultz@linaro.org>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>, Josh Triplett <josh@joshtriplett.org>
References: <5367D989.1000504@linaro.org> <20140505205339.GB15815@cloud>
	<53684526.7060507@zytor.com> <20140506022158.GA1499@thin>
	<20140506125741.GB17586@thunk.org>
In-Reply-To: <20140506125741.GB17586@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/06/2014 05:57 AM, Theodore Ts'o wrote:
> I suspect the only real way of dealing with the problem for 32-bit
> architectures is to consider doing a major version bump for all shared
> libraries, and for a while, 32-bit distributions might have to ship
> two versions of all of the more popular shared libraries.
...
> OTOH, if the main issue is "industrial control and security systems"
> as stated in the original problem description,, I very much doubt they
> would need GNOME shared libraries.  :-)

Well, there's also things like in-car-infotainment systems (which would
annoy future car collectors should they stop working), which may require
GUI toolkits. But I suspect the most problematic cases will be embedded
systems in the literal sense of "embedded in the wall".

But the point being that I think we'll have to consider all existing
32bit applications as broken after 2038 (of course there may be some
which don't use time a t all, or if they do only use relative offsets -
but as a general interface, the existing Linux 32bit ABI is broken). So
if we do something like an ABI break, while providing a compat
personality for existing applications, duplicated libraries would be
necessary, but that extra cost might help motivate vendors to get their
applications ported to the new ABI.

And of course, while rebuilding for the new ABI might be one of the
easier ways to address things, there's no magic bullet to fix all the
places where applications might be casting or storing time_ts as longs
either internally or on fixed wire or on-disk formats. (So folks who
have been planning their retirement around lucrative Y2K-like
contracting work, will still have things to do!).

thanks
-john
