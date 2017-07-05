Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F72AC19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 16:58:08 +0000 (UTC)
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8312E1F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 16:58:07 +0000 (UTC)
Received: by mail-yw0-f170.google.com with SMTP id v193so29531111ywg.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jul 2017 09:58:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <c782a15a-4e73-7373-ca66-5b55e9406059@roeck-us.net>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705112707.54d7f345@gandalf.local.home>
	<c782a15a-4e73-7373-ca66-5b55e9406059@roeck-us.net>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 5 Jul 2017 09:58:06 -0700
Message-ID: <CAPcyv4ips5B1DjEPjpO2JDdt+g-5hEZzvV1b1SbVJZxVpweHpQ@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Carlos O'Donell <carlos@redhat.com>, Linux API <linux-api@vger.kernel.org>,
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

On Wed, Jul 5, 2017 at 9:48 AM, Guenter Roeck <linux@roeck-us.net> wrote:
> On 07/05/2017 08:27 AM, Steven Rostedt wrote:
>>
>> On Wed, 5 Jul 2017 08:16:33 -0700
>> Guenter Roeck <linux@roeck-us.net> wrote:
>
> [ ... ]
>>>
>>>
>>> If we start shaming people for not providing unit tests, all we'll
>>> accomplish is
>>> that people will stop providing bug fixes.
>>
>>
>> I need to be clearer on this. What I meant was, if there's a bug
>> where someone has a test that easily reproduces the bug, then if
>> there's not a test added to selftests for said bug, then we should
>> shame those into doing so.
>>
>
> I don't think that public shaming of kernel developers is going to work
> any better than public shaming of children or teenagers.
>
> Maybe a friendlier approach would be more useful ?
>
> If a test to reproduce a problem exists, it might be more beneficial to
> suggest
> to the patch submitter that it would be great if that test would be
> submitted
> as unit test instead of shaming that person for not doing so. Acknowledging
> and
> praising kselftest submissions might help more than shaming for
> non-submissions.
>
>> A bug that is found by inspection or hard to reproduce test cases are
>> not applicable, as they don't have tests that can show a regression.
>>
>
> My concern would be that once the shaming starts, it won't stop.

Agreed, this shouldn't be a new burden for maintainers, this should be
a contribution path for new kernel developers. Go beyond our standard
"fix a bug" advice, which is a great advice, and also recommend
"backstop a regression with a unit test".
