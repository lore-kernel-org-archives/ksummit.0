From: Luis Chamberlain <mcgrof@kernel.org>
Date: Wed, 15 Jun 2022 11:35:37 -0700
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
In-Reply-To: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
Message-ID: <Yqomeez5G+ML001L@bombadil.infradead.org>

On Wed, Jun 15, 2022 at 08:55:47AM +0200, Jiri Kosina wrote:
> I feel like we are currently lacking a clear borderline, defining what is 
> still acceptable by the community to be implemented in terms of eBPF, and 
> what is over the line as it'd be causing big supportability and 
> maintainability concerns (see e.g. Christoph's concern to the HID eBPF 
> implementation implications [2]).
> 
> So I'd like to propose a session where we'd ideally converge closer to 
> defining a borderline between acceptable and non-acceptable usecases for 
> eBPF in the kernel.

Can't the equivalent of an LSM be used for these considerations?

  Luis
