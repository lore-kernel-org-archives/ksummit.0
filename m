Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B043B8A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 11:33:45 +0000 (UTC)
Received: from mail4.hitachi.co.jp (mail4.hitachi.co.jp [133.145.228.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0BC1A1FA1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 11:33:45 +0000 (UTC)
Received: from mlsv1.hitachi.co.jp (unknown [133.144.234.166])
	by mail4.hitachi.co.jp (Postfix) with ESMTP id B7B5333CC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 20:33:43 +0900 (JST)
Received: from vshuts02.hitachi.co.jp (vshuts02.hitachi.co.jp [10.201.6.84])
	by mfilter03.hitachi.co.jp (Switch-3.3.4/Switch-3.3.4) with ESMTP id
	s4QBXgbc000808 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 20:33:43 +0900
Message-ID: <53832692.9020802@hitachi.com>
Date: Mon, 26 May 2014 20:33:38 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <537F3551.2070104@hitachi.com>
	<1400853902.31124.5.camel@fedora64.linuxtx.org>
	<20140524003036.GB26422@thunk.org>
In-Reply-To: <20140524003036.GB26422@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/05/24 9:30), Theodore Ts'o wrote:
> On Fri, May 23, 2014 at 09:05:02AM -0500, Justin M. Forbes wrote:
>> All good suggestions. As nice as it would be if tests were in tree, this
>> might be unmanageable. But even out of tree tests could be automatically
>> brought in provided they are listed somewhere in tree.  Ideally you
>> would be able to "make tests" and get all in tree tests run, or "make
>> alltests" and have it grab/build/run out of tree tests with git urls as
>> well. 
> 
> Um.... how long do you expect "make alltests" to run?
> 
> And how do you deal with tests that require specific hardware?
> 
> For ext4, just doing a light smoke test takes about 30 minutes.  For
> me to run the full set of tests using multiple file system
> configurations, it takes about 12 to 16 hours.  And that's just for
> one file system.  (I do the tests using KVM, with a 90 megabyte
> compressed root file system, and 55 gigabytes worth of scratch
> partitions.)

Agreed. That is why I didn't say uniforming test-harness, but
making a standard way to test. I think we'd better organize maintainers
to test their tree; clarify what they will run and what will not do,
when each branch is tested (e.g. before/after merge, or nightly) and how.

If we force to unify the test frameworks, it will neither be maintained
nor used. Instead, if maintainers state what test they will run and how
to maintain it, we are sure that each test will be done on the each
subsystem branch, and before release, we can avoid to run all tests which
requires many hardware and long time but just run a small number of tests
(e.g. LTP, trinity, etc.)

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
