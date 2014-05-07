Return-Path: <john.stultz@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 01CC48B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 17:28:39 +0000 (UTC)
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DAAF31FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 17:28:37 +0000 (UTC)
Received: by mail-pa0-f42.google.com with SMTP id rd3so1470384pab.29
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 May 2014 10:28:37 -0700 (PDT)
Message-ID: <536A6D43.6020300@linaro.org>
Date: Wed, 07 May 2014 10:28:35 -0700
From: John Stultz <john.stultz@linaro.org>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <20140506203337.GE21332@cloud>
	<20140506205052.GF5012@thunk.org> <53695CE3.5090005@linaro.org>
	<20140507020743.GA6461@thunk.org>
In-Reply-To: <20140507020743.GA6461@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/06/2014 07:07 PM, Theodore Ts'o wrote:
> On Tue, May 06, 2014 at 03:06:27PM -0700, John Stultz wrote:
>> Right. So clearly I don't have all the details ready right this moment,
>> but I hope providing more detail above gives you a better sense of the
>> current proposals and some confidence that I'll try to do my homework
>> and have some discussions on lkml before the Kernel Summit discussion.
> Something else to consider is whether we would need to have some glibc
> folks present at the kernel summit if we want to discuss it there, and
> whether we should also think about also planning some discussions at
> the Plumber's Conference --- because there will certainly be userspace
> impacts that will need to be taken into account.

Do you have a sense of who might be a good glibc contact for this sort
of thing?

And yes, When I ran into Thomas at lsf-mm, we talked about splitting the
duty here, with me bringing it up at Kernel Summit as Thomas cannot
attend, and since I cannot attend Plumbers this year having Thomas
covering it there.

thanks
-john
