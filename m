Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E8DA8D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 08:46:11 +0000 (UTC)
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 92F9312E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 08:46:10 +0000 (UTC)
Received: by mail-pf0-f170.google.com with SMTP id p64so17087389pfb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 01:46:10 -0700 (PDT)
To: Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Josh Boyer <jwboyer@fedoraproject.org>
References: <20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>
	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>
	<20160913061931.GC11047@kroah.com>
	<20160913103814.GQ27946@sirena.org.uk>
	<20160913120942.GA18307@kroah.com>
	<CA+5PVA62NMb5dziRohcSPat5mU-yGzNrDuUFhTYr8Qip306VAg@mail.gmail.com>
	<20160913131249.GA8470@kroah.com>
	<EA994DF73240CA4588A99BF072DB284002126D4F@BPXM12GP.gisp.nec.co.jp>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57E248CE.6050208@linaro.org>
Date: Wed, 21 Sep 2016 16:46:06 +0800
MIME-Version: 1.0
In-Reply-To: <EA994DF73240CA4588A99BF072DB284002126D4F@BPXM12GP.gisp.nec.co.jp>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 09/20/2016 01:15 PM, Tsugikazu Shibata wrote:
>> Yes, I'll have an LTS this year, but next year?  Maybe not, my dream would be that it
>> >wouldn't be needed.  And one has to dream :)
> In this thread, We LTSI team could recognized there is still huge gap between community and industry (especially that have no Enterprise distribution).
> Some years ago, I think Enterprise distros got number of requests to include specific in-house patches from companies but distros were never accepted because of upstream first policy and as the result, companies were going to send patch to upstream. 
> And then, It looks better forming now.
> OTH, Industry that have no such distros, companies should build their own distribution by their own but they have no enough resources to maintain the kernel long term. So, LTS is only the choice for such industry. 
> In the case, companies should understand LTS is a community work, so they should not only consume LTS but also work with upstream.
> By the discussion here, large outstanding patches waiting for next LTS without considering upstream. Also, others are trying to push unready patches for next LTS candidates. These are the example of the gap.
> We LTSI were trying to do some activities to reduce the gap but It seems still not enough.
> As for a next step, I think industry should discuss this problem to find better way otherwise we will lose only a choice. We would try to set up a chance of this discussion at coming Embedded Linux Conference Europe. I hope related people would join there and exchange their own opinion.

I will be there for ELC EU. and like to share some comments on this
issue with you.

But as to LTS existence value, no doubt industry guys like it even it's
just a symbol as co-work target. industry guys do what they do now
because of balance between product pressure and long term maintainer
pressure. Not of they are blind or untrained for upstream benefit. Maybe
there should has better way to help them out....

Regards
Alex
