Return-Path: <carlos@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D63F0BDB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:36:27 +0000 (UTC)
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7874D171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:36:27 +0000 (UTC)
Received: by mail-qk0-f169.google.com with SMTP id d78so192235368qkb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jul 2017 08:36:27 -0700 (PDT)
To: Greg KH <greg@kroah.com>, Guenter Roeck <linux@roeck-us.net>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705153259.GA7265@kroah.com>
From: Carlos O'Donell <carlos@redhat.com>
Message-ID: <a0b4b680-b07b-9060-defb-a74db18c26fb@redhat.com>
Date: Wed, 5 Jul 2017 11:36:23 -0400
MIME-Version: 1.0
In-Reply-To: <20170705153259.GA7265@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
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

On 07/05/2017 11:32 AM, Greg KH wrote:
> So take Carlos's advice, start small, do it for your subsystem if you
> don't touch hardware (easy peasy, right?), and let's see how it goes,
> and see if we have the infrastructure to do it even today.  Right now,
> kselftests is finally getting a unified output format, which is great,
> it shows that people are starting to use and rely on it.  What else will
> we need to make this more widely used, we don't know yet...

+1 ;-)

-- 
Cheers,
Carlos.
