Return-Path: <shuah@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DCF0F105B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 14:34:17 +0000 (UTC)
Received: from mailout.easymail.ca (mailout.easymail.ca [64.68.200.34])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 63FAA76A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 14:34:17 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, clm@fb.com,
	dan.j.williams@intel.com, Jonathan Corbet <corbet@lwn.net>, olof@lxom.net,
	rostedt@goodmis.org, torvalds@linux-foundation.org
From: Shuah Khan <shuah@kernel.org>
Message-ID: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
Date: Mon, 24 Sep 2018 08:24:07 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [TECH-TOPIC] Review - Code of Conduct: Let's
 revamp it.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I have been trying to follow various threads on this topic and none of them address
the review of this patch that went in. There is no mistake in the title of this topic.
I do consider this topic to be more general than limited to Maintainer Summit. Hence,
the choice of a wider Technical designation.

So I am kicking off a thread to do the review with my comments. I am in general
agreement with the spirit of this change to the existing "Code of Conflict".

Now specific concerns and comments:

I am concerned about the added responsibilities as a maintainer. I have to not only
worry about the quality of code and technical aspects, but also be responsible for
behavior of individuals I might not have any control or sway over. That said, I am
hopeful that this will help all of us in the community, maintainers and contributors
alike to think a bit more about how their response will be received and would they like
it if they are at the receiving end of that kind of message, before hitting that send
button. When we see a response that is offensive and/or hurtful, there is usually silence
on such threads. So maybe that will change with this CoC and at least some of us will say,
let's use a firm and polite message as opposed to offensive/hurtful message.

I also have a concern that what is hurtful can be somewhat subjective. What a maintainer
considers isn't hurtful, could be perceived as hurtful by the individual at the receiving
end.

What is offensive is a bit more clear. It will be learning curve for us as a community and
I do think we will get there. I believe our kernel community at large is respectful and helpful.

This decision to change the existing "Code of Conflict" signed off by a large number of developers,
has been changed and committed with a few people signing off on it.

It would be good to know the circumstances that necessitated the decision to include this patch
without the proper review process. if that isn't possible, it is important to follow the review
process now for v2. Also, discussing this in the Maintainer summit and/or kernel summit will not
make the community feel like it is a community approved decision. At least, kernel community should
be given a chance to discuss this change just like any other change.

thanks,
-- Shuah
