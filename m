Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9466ED30
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 18:29:43 +0000 (UTC)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com
	[209.85.222.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9A58286E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jun 2019 18:29:41 +0000 (UTC)
Received: by mail-ua1-f44.google.com with SMTP id p5so2438915uar.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Jun 2019 11:29:41 -0700 (PDT)
To: Jan Kara <jack@suse.cz>, Kees Cook <keescook@chromium.org>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<CAJr-aDn+j9gyp-m=uv6mz9WWWdzmphC1pNUcyrfXaZtZ=muS9Q@mail.gmail.com>
	<20190603104234.GD27933@quack2.suse.cz>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <bc000048-a1ce-49cb-541d-5143a3febe2b@redhat.com>
Date: Tue, 4 Jun 2019 14:29:38 -0400
MIME-Version: 1.0
In-Reply-To: <20190603104234.GD27933@quack2.suse.cz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/3/19 6:42 AM, Jan Kara wrote:
>> What I want to find is a way to fund on-going work in this area. It
>> just does not appear to be working to find funding within various
>> companies to do this kind of sustained bug-hunting. It's a bit of a
>> resource conflict: if a company has kernel developers on staff they
>> tend to want to have them focused on "new things".
> Well, not necessarily only "new things". Distros have kernel people that do
> bugfixing but the most focus naturally goes towards bugs customers are
> likely to get exposed to. Triaging through syzbot reports when you have
> enough bugs your customers actually hit thus does not look very appealing
> :)  But this goes back to your idea of automated way of classifying bug
> priority. Unpriviledged user triggerable kernel oops in MM is going to get
> more attention than init namespace root triggerable one in some random
> old driver (which is likely to bitrot for long and that's just a reality of
> limited resources)...

Part of it is also a matter of how much time you want to spend. There are
some bugs I can spend 30 minutes looking at and know I can either come up with
the proper fix or write up a report that's likely to get fixed by a maintainer.
Then there are others which look like they could be solvable with more time
that I don't have. The long tail of low priority bugs are the ones that
would be really good candidates for interested community kernel developers
to spend some time on.

I'll also just state straight out that just doing bug triage gets very tedious
after a while. It's valuable work but after a while you aren't actually growing
your skills very much. This might be something that would be best as a yearly
contract position. Of course, people who aren't me might also have more
patience for it long term :)

Thanks,
Laura
