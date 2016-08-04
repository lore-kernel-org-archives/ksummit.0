Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FD27724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 03:32:56 +0000 (UTC)
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E3BB1A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 03:32:56 +0000 (UTC)
Received: by mail-pa0-f67.google.com with SMTP id q2so15491843pap.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 20:32:56 -0700 (PDT)
In-Reply-To: <20160803231422.5e2e0fd6@grimm.local.home>
References: <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net> <20160803161234.GA32965@dtor-ws>
	<20160803231422.5e2e0fd6@grimm.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Wed, 03 Aug 2016 20:32:48 -0700
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <54203DEE-A660-4B3B-B748-D19F08B9D285@gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On August 3, 2016 8:14:22 PM PDT, Steven Rostedt <rostedt@goodmis.org> wrote:
>On Wed, 3 Aug 2016 09:12:34 -0700
>Dmitry Torokhov <dmitry.torokhov@gmail.com> wrote:
>
>> When I put cc:stable it is simply a suggestion for stable maintainers
>to
>> figure out if this commit is suitable for _their_ stable. I might
>have
>> an idea about n-1.x stable series but I certainly do not have any
>desire
>> nor time to research whether this patch applicable to 3.2 or 3.0
>stable
>> series.
>
>Can you at least find the commit that introduced the bug that a patch
>fixes? I do that all the time. It's not that hard. git blame is prefect
>for such things.
>
>
> git blame broken-file.c
>
>Find the commit that contains the broken code.
>
> git show SHA1-OF-WHAT-I-FOUND
>
>Oh, it's a whitespace change (curses a little).
>
> git blame SHA1-OF-WHAT-I-FOUND~1 broken-file.c
>
>(the ~1 will give you the tree before that whitespace fix)
>
>Find the commit that contains the broken code.
>
>Sometimes it takes a few iterations of the above, but once I find the
>commit, I have what I need for the "Fixes" tag.
>
>Now, I like to also add the stable range. To do that, I go to my Linus
>tree, and do:
>
> git describe --contains SHA1-OF-BROKEN-COMMIT
>
>and wala, it tells me what release that was added. Like:
>
>  git describe --contains 85f2b08268c01
>v3.14-rc1~82^2~40
>
>Then I know to add:
>
> Cc: stable@vger.kernel.org # v3.14+

Do you? Are you certain that everything that is needed for your fix for 4.8 to work properly is in 3.14.n?

Also, if it was introduced in 3.4 and you get report from 4.4.n just now so we really needed it in 3.14? Maybe it would be better to simply leave that old kernel alone? It's been what, 3 years?


Thanks.

-- 
Dmitry
