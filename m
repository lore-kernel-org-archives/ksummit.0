Return-Path: <axboe@kernel.dk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E17D90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Nov 2015 17:08:06 +0000 (UTC)
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C0218191
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Nov 2015 17:08:02 +0000 (UTC)
Received: by obdgf3 with SMTP id gf3so17445106obd.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 03 Nov 2015 09:08:02 -0800 (PST)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
References: <1446570155.6440.12.camel@HansenPartnership.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <5638E9F0.9020504@kernel.dk>
Date: Tue, 3 Nov 2015 10:08:00 -0700
MIME-Version: 1.0
In-Reply-To: <1446570155.6440.12.camel@HansenPartnership.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] Stable and delay backports
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 11/03/2015 10:02 AM, James Bottomley wrote:
> I'm still not clear, even after all the discussion, whether there's any
> value left to annotating the cc to stable with a delay backport.  I'm
> getting ready to post a fix to our block size calculations which make
> them completely accurate instead of within 5% like they were before.
> Technically this is a bug fix because people get distressed even over
> apparently losing 5% of their space, so it will have to be backported,
> but the algorithm has increased in complexity, so it would be better to
> incubate in main line for a while to make sure there are no further
> complaints.
>
> So the question: I think I heard Greg say you're automatically delaying
> merge window backports anyway, so there's no real need to add a separate
> delay tag, or is there?

Or you could just do it manually. Don't mark it stable, get it in 
mainline. Then send stable@ and email when you feel it's safe, asking 
them to pickup that commit.

-- 
Jens Axboe
