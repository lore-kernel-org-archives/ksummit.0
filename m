Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 51F33216C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jun 2019 18:22:59 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31034E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jun 2019 18:22:58 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id h6so13806565ioh.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jun 2019 11:22:58 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
	[24.9.64.241])
	by smtp.gmail.com with ESMTPSA id x13sm199823ioj.18.2019.06.12.11.22.56
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Jun 2019 11:22:56 -0700 (PDT)
To: ksummit-discuss@lists.linuxfoundation.org
References: <20190612085405.6045d95d@lwn.net>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <f2f4a212-54f4-70a2-5a5d-9d45b3e1b5ae@linuxfoundation.org>
Date: Wed, 12 Jun 2019 12:22:55 -0600
MIME-Version: 1.0
In-Reply-To: <20190612085405.6045d95d@lwn.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/12/19 8:54 AM, Jonathan Corbet wrote:
> What could be more fun than talking about kernel documentation?  Things we
> could get into:
> 
>   - The state of the RST transition, what remains to be done, whether it's
>     all just useless churn that makes the documentation worse, etc.
> 
>   - Things we'd like to improve in the documentation toolchain.
> 
>   - Overall organization of Documentation/ and moving docs when the need
>     arises.  It seems I end up fighting about this more than just about
>     anything else, but I think it's important to organize our docs for the
>     convenience of the people using them.
> 
>   - The ultimate vision for kernel docs (for now).  RST conversion and
>     imposing some organization are important, but they will not,
>     themselves, give us a coherent set of documentation.  What can we do to
>     have documentation that is useful, current, and maintainable, rather
>     than the dusty attic we have now?
> 

The first step is identifying the ones that are out of date and/or
incorrect. I think this is probably the most time consuming part
and the second is start updating.

I am currently putting together a task list for mentorship program
with a goal to create tasks that would more meaningful and helpful
instead of whitespace patches.

I will gladly add documentation tasks to the list to help improve
the documentation.

thanks,
-- Shuah
