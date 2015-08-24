Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E6DE8A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 17:19:54 +0000 (UTC)
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 12F3AA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 17:19:54 +0000 (UTC)
Received: by iodv127 with SMTP id v127so156498454iod.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 10:19:53 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <87k2skzmhs.fsf@linux.vnet.ibm.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<87k2skzmhs.fsf@linux.vnet.ibm.com>
Date: Mon, 24 Aug 2015 10:19:53 -0700
Message-ID: <CAGXu5j+=b+EbciyJwr-eNmRVomdeZP4gkWXcfCQtEOEo=HYkAQ@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: "Aneesh Kumar K.V" <aneesh.kumar@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 9:20 AM, Aneesh Kumar K.V
<aneesh.kumar@linux.vnet.ibm.com> wrote:
> James Morris <jmorris@namei.org> writes:
>
>> I'd like to propose a security topic, "Kernel Hardening" (or "Kernel Self
>> Protection"), to discuss how we can better mitigate vulnerabilities
>> arising from kernel bugs.
>>
>> We have some measures in place, although we are really not doing
>> everything we can, as demonstrated from time to time when vulnerabilities
>> arise which are mitigated by protections in grsecurity (for example), but
>> not by mainline.  Much of the necessary work has already been done in that
>> project, and as many will know, there have been significant challenges
>> involved in past efforts to bring these techniques into mainline.  In some
>> cases, the performance hit has been too high for maintainers to accept,
>> and I wonder if we can re-visit some of these cases, with new approaches
>> or perspectives on cost/benefit.
>>
>> There are also potentially promising approaches to mitigation with other
>> technologies such as KASan and gcc plugins, as well as evolving hardware
>> features.
>>
>
> We also have to make sure that the compiler based approach work with
> architectures other than x86. Archs like ppc64 have different memory
> layout and features like KASan may not really map easily with the
> layout. For example we may not be able to implement inline kasan
> instrumentation on ppc64. Also we have issues with stack and
> global out of bounds access check.
>
> I would be interested in this discussion, if we are scheduling this for
> ksummit. I work mostly on ppc64 memory-management subsystem and can
> bring in details of challenges faced with KASan implementation on ppc64.

Should we have a separate discussion for bug-hunting? KASan needs to
expand its architecture coverage, Trinity needs a maintainer, and
there's always new things happening with smatch and coccinelle.

I'd just like to keep bug-hunting entirely separate from
self-protection, as I feel they're distinct topics (though related).

-Kees

-- 
Kees Cook
Chrome OS Security
