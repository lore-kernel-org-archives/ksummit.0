Return-Path: <amit.kucheria@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 448BE722
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 22:58:46 +0000 (UTC)
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C346EE9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 22:58:45 +0000 (UTC)
Received: by mail-it0-f53.google.com with SMTP id c198so123286627ith.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 04 Sep 2016 15:58:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160904001031.t7sv5isw5tc46pxr@thunk.org>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
	<20160904001031.t7sv5isw5tc46pxr@thunk.org>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Mon, 5 Sep 2016 04:28:44 +0530
Message-ID: <CAP245DVwmwkG3VbpiKmCx1Y4d3Hf62idZyHuroNf9TZ=yFuDsg@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
	collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Sep 4, 2016 at 5:40 AM, Theodore Ts'o <tytso@mit.edu> wrote:
>
> If it reduces the number of massive features that have to be
> backported to 4.4, it might be that pushing them to use 4.7 (or
> waiting for the next LTS kernel, which should hopefully be coming soon
> anyway) might be less risky and less work than trying to back port
> feature patchsets to 4.4 or 3.18.

OK, I'll bite.

The vendors depend on Google providing an Android common tree[1] to
build their BSP on top of. Currently, there isn't anything newer than
a 4.4-based common tree from Google. It'll be early 2017 by the time
4.9 LTS is released and the Android common tree is available on it
before vendors can even start porting their BSPs to it. Some are
quicker than others, but safe to say that it'll be summer 2017 by the
time the vendor BSPs can run on 4.9 LTS. That leaves very little time
for product testing[2] and some slack, in order to ready devices for
the Christmas market[3]. The project managers will flag that as a
'risk' and the vendor will stick to a 4.4 LTS.

But since 4.4 LTS misses some key features that have landed in 4.5,
4.6, 4.7 and 4.8, something like LSK will fill that gap by backporting
those features.

So the problem is that it might be 2018 before the first 4.9-based CE
devices hit the market.

Now, if everything was on its way upstream, the BSP deltas would be
smaller and the whole porting and validation exercise on top of the
Android common tree would take much less time. But we aren't there yet
for all vendors, some are doing better than others.

Regards,
Amit

[1] https://android.googlesource.com/kernel/common/
[2] Across several SoC variants, I might add
[3] This may not be uniformly important across the globe, but it is an
empirical observation that flagship devices with the latest software
tend to appear in the 2nd half of the year.
