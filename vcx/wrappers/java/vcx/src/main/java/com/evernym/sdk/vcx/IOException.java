package com.evernym.sdk.vcx;

/**
 * Exception thrown when the SDK experienced an IO error.
 */
public class IOException extends VcxException
{
	private static final long serialVersionUID = -1581785238453075780L;
	private final static String message = "An IO error occurred.";

	/**
	 * Initializes a new IOException.
	 */
	public IOException() 
    {
    	super(message, ErrorCode.CommonIOError.value());
    }
}