Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D91A483D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 12:42:23 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 59A821BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 12:42:23 +0000 (UTC)
Date: Wed, 8 Jul 2015 06:42:21 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Peter =?UTF-8?B?SMO8d2U=?= <PeterHuewe@gmx.de>
Message-ID: <20150708064221.6c966b7f@lwn.net>
In-Reply-To: <201507080905.00051.PeterHuewe@gmx.de>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
	<CAJKOXPfnwUX5fdBg1EDJSGgrNGXb3AmrK8tXokxqHw=XYzhddA@mail.gmail.com>
	<201507080905.00051.PeterHuewe@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 8 Jul 2015 09:04:58 +0200
Peter Hüwe <PeterHuewe@gmx.de> wrote:

> So changing our fame-statistics from commits to reviews and tested by might 
> change the situation a bit.
> -> The next LWN stats and coverage should probably focus on the reviewed-by /   
> tested-by stats. 

I do occasionally report those numbers with the rest.  The reason it
doesn't happen very often is simple: it's a small minority of patches that
carry such tags.  As such, I don't think the numbers actually reflect the
reviewing and testing going on; they just reflect the placement of the
tags.  Among other things, that makes the system relatively easy to game,
and, in the past, I've seen that happening.

Should anybody be curious, I'll append the latest, hot-off-the-repo numbers
for 4.2.

jon

[12,099 non-merge changesets total when I ran this]

Developers with the most reviews (total 2597)
Ian Abbott                 149 (5.7%)
Borislav Petkov            148 (5.7%)
Hannes Reinecke            100 (3.9%)
Christoph Hellwig           73 (2.8%)
H Hartley Sweeten           62 (2.4%)
Christian König             57 (2.2%)
Tomas Henzl                 54 (2.1%)
Alex Deucher                51 (2.0%)
David Gibson                49 (1.9%)
Scott Teel                  42 (1.6%)

Developers with the most test credits (total 775)
Joerg Roedel                35 (4.5%)
Keita Kobayashi             35 (4.5%)
Krishneil Singh             31 (4.0%)
Arnaldo Carvalho de Melo    30 (3.9%)
Ira Weiny                   23 (3.0%)
Doug Ledford                23 (3.0%)
Aaron Brown                 21 (2.7%)
Alex Ng                     21 (2.7%)
Javier Martinez Canillas    19 (2.5%)

Developers who gave the most tested-by credits (total 775)
Michael Wang                46 (5.9%)
Joerg Roedel                42 (5.4%)
Kuninori Morimoto           36 (4.6%)
Jiang Liu                   35 (4.5%)
Mel Gorman                  31 (4.0%)
Vitaly Kuznetsov            21 (2.7%)
Andre Przywara              20 (2.6%)
Marek Szyprowski            19 (2.5%)
Lv Zheng                    17 (2.2%)
Don Skidmore                17 (2.2%)

Developers with the most report credits (total 467)
Fengguang Wu                65 (13.9%)
Dan Carpenter               26 (5.6%)
Russell King                21 (4.5%)
Ingo Molnar                 10 (2.1%)
Stephen Rothwell             9 (1.9%)
Christoph Hellwig            5 (1.1%)
Kevin Hilman                 5 (1.1%)
Sergey Senozhatsky           5 (1.1%)
Jim Davis                    5 (1.1%)
Arnaldo Carvalho de Melo     4 (0.9%)

Developers who gave the most report credits (total 467)
Thomas Gleixner             30 (6.4%)
Paul E. McKenney            14 (3.0%)
Lv Zheng                    12 (2.6%)
Eric Dumazet                 8 (1.7%)
Paul Gortmaker               8 (1.7%)
Peter Zijlstra               8 (1.7%)
Takashi Iwai                 7 (1.5%)
Stephen Boyd                 7 (1.5%)
Aleksey Makarov              7 (1.5%)
Filipe Manana                6 (1.3%)
