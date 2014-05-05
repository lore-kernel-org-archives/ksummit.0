Return-Path: <john.stultz@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 27548979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 18:33:49 +0000 (UTC)
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BBCDD200D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 18:33:48 +0000 (UTC)
Received: by mail-ie0-f180.google.com with SMTP id as1so8570903iec.39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 May 2014 11:33:48 -0700 (PDT)
Message-ID: <5367D989.1000504@linaro.org>
Date: Mon, 05 May 2014 11:33:45 -0700
From: John Stultz <john.stultz@linaro.org>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I'd like to discuss some thoughts on how to address the 2038 issues on
32bit architectures. This is important, as vendors are still producing
lots of 32bit hardware, which may very well have 24+ year lifespans
(think industrial control applications, security systems).  NetBSD and
OpenBSD have recently broken their ABI, converted their time_t to long
long, to properly address this. So I'd like to discuss thoughts on how
Linux can do similar despite our no-breaking-userspace rules, after all,
one way or another (almost) all of Linux's 32bit architectures are
terminally broken past 2038.

Thomas (who I don't think can attend due to other plans) and I have had
some small talks about this and we have different initial preferences on
how to go about solving things, so I'd like to present the pros and cons
of the current options we're stewing on, open the discussion up to other
ideas, and see if there's a consensus on which way to go.

thanks
-john
