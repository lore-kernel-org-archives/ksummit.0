Return-Path: <carlos@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 96B12B7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:08:53 +0000 (UTC)
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 578F13F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:08:52 +0000 (UTC)
Received: by mail-qt0-f175.google.com with SMTP id 32so188805165qtv.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jul 2017 08:08:52 -0700 (PDT)
To: Steven Rostedt <rostedt@goodmis.org>, Greg KH <greg@kroah.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<20170705103335.0cbd9984@gandalf.local.home>
From: Carlos O'Donell <carlos@redhat.com>
Message-ID: <8c6843e8-73d9-a898-0366-0b72dfeb79a2@redhat.com>
Date: Wed, 5 Jul 2017 11:08:48 -0400
MIME-Version: 1.0
In-Reply-To: <20170705103335.0cbd9984@gandalf.local.home>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: linux-api@vger.kernel.org, Thorsten Leemhuis <linux@leemhuis.info>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/05/2017 10:33 AM, Steven Rostedt wrote:
> No test should be written for a single specific hardware. It should be a
> general functionality that different hardware can execute.

Why? We test all sorts of hardware in userspace and we see value in that
testing.

-- 
Cheers,
Carlos.
