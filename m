Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9356B308AD4
	for <lists+linux1394-devel@lfdr.de>; Fri, 29 Jan 2021 18:04:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l5XCO-0000tj-Bv; Fri, 29 Jan 2021 17:04:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bigeasy@linutronix.de>) id 1l5XCN-0000td-ET
 for linux1394-devel@lists.sourceforge.net; Fri, 29 Jan 2021 17:04:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IGnKt1blMBo1w/KvEX+f7ff+JRpZpJsPM2mWDu64NPQ=; b=OcZji5edgvXIOqb4Y+2d4IK2hd
 9fua7Aknq91PQ7HjwuPBlMPwWR0EcNqOT8hIT/hqptQG5SYCvV6eTSrJR3yOujAETPHvXUm6AKRJ7
 pAYXLroY3QJdSxAQJQ3NkNGoYCvhZIcQ4TcFV+tdwWSYqnnrPPRKc0U3s6eWKOGjMKxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IGnKt1blMBo1w/KvEX+f7ff+JRpZpJsPM2mWDu64NPQ=; b=MzPOFcH8eAhJDNwJdoZSe3+RZL
 WmUkmNojUMiiKBWw1cGOP6yXL4pisj2IpB2l0Jx30HtoUvVmKqkm+g128scM0l57NDqR3aYaEGct1
 PbyO2ZsaC0jba52MTN4xQNt3nZiBqAeRRT12YG+kZUDxHxC5BIigkTf/7QObNDVddRbA=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l5XC6-0007wV-Ea
 for linux1394-devel@lists.sourceforge.net; Fri, 29 Jan 2021 17:04:42 +0000
Date: Fri, 29 Jan 2021 18:04:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1611939855;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IGnKt1blMBo1w/KvEX+f7ff+JRpZpJsPM2mWDu64NPQ=;
 b=aqbaPQHzcbtWMMcrh9Wfvj87Uu7O7iVcZs/pn1qvhBirhcGO8mw9qflRoBZzoyCiuuHHYL
 UTwsVqe40CzXfpohEPdEW/ne6aOaP0UMqvhWjBlqOTtjUUjf88hI7OQcM3H0htTc6Ld7WL
 pNS+oH95Jra3oniktDBJF9iRmE5bqnpNuSH4u/dHOj34AXAfmbPLHl0cA3iDjptDWy7b5E
 6FQMXDr2XAieUmno1/mL2hRPzP18gWvqC6EMG42B77wWH+uK3ptDItd1Vxpf85Vf0zyi7X
 dZo3t8cEMgYiIiEeO7ZkC14VjmpcsxSlZZhGbIbF5dDPC3krxsa8zgm9+HZ+8A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1611939855;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IGnKt1blMBo1w/KvEX+f7ff+JRpZpJsPM2mWDu64NPQ=;
 b=g4S0Kq2vq9X1wngzJV0aYXHopvOOLTgyX3SIJ5ALn3i9HqD2csAn/KtkH6nCQgb78aMQiu
 KMAWZl4g6x73dBBw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <20210129170414.ugrlb6hpcnbiqqbf@linutronix.de>
References: <YAwPoaUZ1gTD5y+k@hmbx> <YBJZk9/77+E0TRk4@lx-t490>
 <YBMvmU+kp11f7+wF@hmbx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBMvmU+kp11f7+wF@hmbx>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pkgbuild.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l5XC6-0007wV-Ea
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

T24gMjAyMS0wMS0yOCAyMjo0MTo0NSBbKzAxMDBdLCBEYXZpZCBSdW5nZSB3cm90ZToKPiBrZXJu
ZWwgbG9nIGZvciBtYWlubGluZToKPiBodHRwczovL3BrZ2J1aWxkLmNvbS9+ZHZ6cnYvYnVncy8y
MDIxLzAxL2xpbnV4LTUuNC45MS1rZXJuZWwubG9nCj4gCj4ga2VybmVsIGxvZyBmb3IgcnQgKG5v
IGRpY2UgOi0vKToKPiBodHRwczovL3BrZ2J1aWxkLmNvbS9+ZHZ6cnYvYnVncy8yMDIxLzAxL2xp
bnV4LTUuNC45MS41MC5hcmNoMS1rZXJuZWwubG9nCgpJIGRvbid0IHNlZSBhbnl0aGluZyB3cm9u
Zy4gVGhlcmUgaXMgc21hbGwgZGlmZmVyZW5jZSBpbiB0aW1pbmcgYW5kIHRoZW4KdGhlIFJUIHZl
cnNpb24gZG9lcyBub3QgZG8gYSB0aGluZyB3aGlsZSAhUlQga2VlcHMgcmVzZXRpbmfigKYKQ291
bGQgeW91IHRyeSBub24tUlQgd2l0aCB0aGUKCXRocmVhZGlycXMKCm9wdGlvbj8KClNlYmFzdGlh
bgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm1haWxp
bmcgbGlzdCBsaW51eDEzOTQtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4MTM5NC1kZXZlbAo=
