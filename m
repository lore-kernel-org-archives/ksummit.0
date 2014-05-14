Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E94514C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:51:22 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BD1572010F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:51:21 +0000 (UTC)
Message-ID: <537374D0.8020307@roeck-us.net>
Date: Wed, 14 May 2014 06:51:12 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Johannes Berg <johannes@sipsolutions.net>,
	Wolfram Sang <wsa@the-dreams.de>
References: <20140509170709.GA9747@redhat.com>	<20140511111034.GA6400@katana>
	<53706EAB.7010601@monstr.eu>	<20140512093235.GA2872@katana>
	<1400074363.4759.8.camel@jlt4.sipsolutions.net>
In-Reply-To: <1400074363.4759.8.camel@jlt4.sipsolutions.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/14/2014 06:32 AM, Johannes Berg wrote:
> On Mon, 2014-05-12 at 11:32 +0200, Wolfram Sang wrote:
>>> is sent. Why not just tell them run this in-kernel tool with all
>>> that checking enabled before you send the patch?
>>
>> make C=1 ? That could be perhaps updated to call sparse *and* smatch if
>> it finds them installed.
>
> I do that with a simple wrapper:
>
> ~/bin/sparse:
> #!/bin/sh
>
> /path/to/real/sparse "$@" || exit 100
> /path/to/smatch -p=kernel "$@" || exit 200
>

I use "make C=1 ..." for sparse, followed by
"make C=1 CHECK="${SMATCH_PATH}/smatch --project=kernel ..."
for smatch.

Guenter
