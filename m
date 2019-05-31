Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3DCAC1594
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 15:42:55 +0000 (UTC)
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AB327823
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 15:42:54 +0000 (UTC)
Received: by mail-it1-f176.google.com with SMTP id g24so3312546iti.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 08:42:54 -0700 (PDT)
To: Theodore Ts'o <tytso@mit.edu>
References: <96c97a27-83a2-b86c-2880-984c9fa6d4b5@linuxfoundation.org>
	<20190531021421.GA8123@mit.edu>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <a88ca2d1-27d7-5b80-3472-7110e7d2158c@linuxfoundation.org>
Date: Fri, 31 May 2019 09:42:52 -0600
MIME-Version: 1.0
In-Reply-To: <20190531021421.GA8123@mit.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Talking code or talking
 in code!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Ted,

On 5/30/19 8:14 PM, Theodore Ts'o wrote:
> On Thu, May 30, 2019 at 04:19:20PM -0600, Shuah Khan wrote:
>> We as a community talk code in emails. Do we talk in code at times? How
>> effective are we in communicating with each other?
>>
>> I would like to propose a topic to explore our communication styles to
>> get a better understanding of how effective we are. I am hoping, we
>> could become more productive, if we get some insight into whether or not
>> we talk in code while we talk code.
>>
>> We could do this by inviting Isabella Ferreira, PhD Student in Computer
>> Engineering, Polytechnique Montréal to tell us about Sentimine,
>> which is a plugin on top of the cregit platform focused on analyzing
>> communication in open source communities. It will include a short survey
>> focused on analyzing a few emails for clarity and perception.
> 
> Hi Shuah,
> 
> If the goal is to get Isabella's ideas more exposure, perhaps it would
> be better to ask if she would be willing to give a presentation at the
> more open Kernel Summit track during the LPC?

Isabella sent in a proposal for a BOF session at LPC. She is looking
to social her research and more importantly, she is looking to validate
her analysis engine with real data. She has been working on refining
it which is currently using various Linux email lists.

> 
> It would appear that it's fairly early days for her work, from doing
> some web searching, the only thing I could really find was her 2019
> Open Source Leadership Summit presentations (slides here[1]) and the
> more formal academic paper[2].
> 
> [1] https://events.linuxfoundation.org/wp-content/uploads/2018/07/OSS_Summit_Presentation.pdf
> [2] http://mcis.polymtl.ca/publications/2019/SEMotion_2019.pdf
> 

Right. It is early in some sense and ready for comparing human
perceptions with the analysis the tool is doing to validate and
refine the tool.

> As near as I can tell the talk was not video recorded; which is a
> shame, since I wasn't able to pick up from the slide presentation the
> same kind of excitement that you clearly have over her work.  I was
> also very confused about how cregit (which analyzes code) mentioned in
> the last two slides relates to the work described in the first 80% of
> the slide deck, which appears to be analyzing mailing list text.
> 

I went looking for recording as well prior to sending this proposal.
It would have been useful to get a better idea of the research, if
we had a recording.

> I'd also think that if the goal is to have a conversation about
> communication styles, having that discussion with a wider circle might
> be more productive.  Or did you have something in mind about some
> decision that might get made at the Maintainer's Summit?
> 

She is planning to cover wider audience from other open source
communities at the BOF if it gets accepted of course.

As for you second question:

"Or did you have something in mind about some decision that might get
  made at the Maintainer's Summit?"

The answer is no. I am not looking for any decisions and/or outcomes
based on this proposal.

Let me go over my vision for this time slot at the Maintainers Summit
if we choose to add it. This isn't going to be a long deep dive session
on the research. I asked Isabella to work with the following outline:

- A short summary of Sentimine
- A short survey of 2 or 3 emails. We do the survey - I can have her
   share the survey format ahead of time. Based on my recollection of
   the survey from OSLS presentation, it asks participants to identify
   the tone of the email. Positive/negative/neutral.
- Isabella compares these results to the tool's analysis. The goal
   is to see how far off the tool's analysis from real developers
   take on these emails.

My observation is that the tool is missing a subjective and context
component in the analysis. It might have improved since the OSLS time.

This research and tool based on this research is going to continue
with or without our participation. We as community and our emails
are the raw data fueling this research and tool. I think we can add
value with our direct feedback on the tool and its analysis to refine
it and tune it with real analysis.

This feedback coming from maintainers and developers that have
been doing the longest will be very valuable. I consider this group
of people at this summit is as close it gets to the heart of the
community. As a result, the feedback from this group can make this
tool stronger for the rest of the open source communities.

In addition, I think the tool should also look at clarity of
communication not just tone. To me this is the most useful part for
us. My motivation and goal is to explore if we can take this opportunity
to influence the direction of this research to look at what would be
useful to us as a community.

Hope this helps understand the reasoning behind this proposal.

thanks,
-- Shuah
