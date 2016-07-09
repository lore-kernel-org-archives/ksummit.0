Return-Path: <vbabka@suse.cz>
To: Jiri Kosina <jikos@kernel.org>, ksummit-discuss@lists.linux-foundation.org
References: <alpine.LNX.2.00.1607082043340.24757@cbobk.fhfr.pm>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <5780EB98.40100@suse.cz>
Date: Sat, 9 Jul 2016 14:18:32 +0200
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1607082043340.24757@cbobk.fhfr.pm>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] How to cope with 'creative'
 userspace
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/09/2016 12:35 AM, Jiri Kosina wrote:
> There are many cases where certain components of modern linux desktops 
> slightly misuse the features provided by the kernel.
> 
> One of the latests instances was PIDs controller being instructed by an 
> init system to actually limit the number of created sub-processess/threads 
> to insanely small number
> 
> 	https://github.com/systemd/systemd/blob/dd050decb6ad131ebdeabb71c4f9ecb4733269c0/NEWS#L60
> 
> That of course caused horrible user experience left and right.
> 
> This is not a single and only exceptional instance of such issue.
> 
> I know that this in principle shouldn't really be directly our business, 
> but I believe we should be at least a bit nervous when our interfaces are 
> being used "incorrectly".

I don't know, this sounds like it has a massive bikesheding potential :)
There might be scenarios where the settings make perfect sense and
deciding upfront what's "incorrect" is impossible.

And we can't always anticipate how creative userspace might be, so it's
unlikely that even if we had some idea, it would get reliably
implemented for all potentially problematic cases, until we actually see
userspace trigger them.

> I dont' have a good idea from top of my head what we could immediately do 
> to improve this. Some sort of documented guidance on sane values for 
> certain userspace toggles? Issue a warning when we think userspace is 
> trying to shoot itself in a foot? ...?

IMHO a first important step is to make sure that if kernel takes some
unusual action due to these userspace interventions, the user has a way
to learn what happened and why. IIRC this kind of visibility for the
pids controller rejecting fork was added only recently (or still being
discussed/improved?). So that's IMHO too late. But don't want to blame
anyone, as my previous paragraph above applies...

> Thanks,
> 
