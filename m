Return-Path: <khilman@deeprootsystems.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A9183BCE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:42:28 +0000 (UTC)
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8919EE3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 18:42:27 +0000 (UTC)
Received: by pdrg1 with SMTP id g1so18597388pdr.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 08 Jul 2015 11:42:27 -0700 (PDT)
From: Kevin Hilman <khilman@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<1436347639.29626.4.camel@ellerman.id.au>
	<559D2B02.9020508@roeck-us.net> <7hlheqfvqo.fsf@deeprootsystems.com>
	<559D5CBA.4080703@roeck-us.net>
Date: Wed, 08 Jul 2015 11:42:23 -0700
In-Reply-To: <559D5CBA.4080703@roeck-us.net> (Guenter Roeck's message of "Wed,
	08 Jul 2015 10:24:10 -0700")
Message-ID: <7h7fqafq40.fsf@deeprootsystems.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuah.kh@samsung.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Guenter Roeck <linux@roeck-us.net> writes:

>> Are the build artfiacts ([bz]Image, System.map, modules, etc.) made
>> available someplace?
>>
> Not currently. I could make it available if there is interest, though I'd
> probably have to find some place out in the web to keep the data (we are talking
> 16 branches times ~150 builds per branch times the number of builds kept in the log).
> If I assume that five builds are kept per branch, and each build takes only 10MB
> of space, this already adds up to more than 100 GB of space needed, 

Understood. storage.kernelci.org is currently using ~400G for 45 days
worth of builds from the 55+ branches x ~150 builds/branch we do, and
includes boot logs/results too.

Kevin
